#!/usr/bin/env node

const path = require('node:path');

const { csv, labels, paths } = require('./generator.config');
const { parseFsh, sourceFshFiles } = require('./lib/sushi');
const { ensureDir, readUscdiQualityData, write } = require('./lib/io');
const { urlTail } = require('./lib/text');
const { profileMaps } = require('./lib/profiles');
const { assertAllDataElementsMapped } = require('./lib/uscdi');
const { runGenerator } = require('./lib/runner');

const FSH_FILES = sourceFshFiles();

function uniqueMappings(mappings = []) {
  return [...new Map(mappings.map(mapping => [urlTail(mapping.profile), mapping])).values()];
}

function csvCell(value) {
  return `"${String(value ?? '').replace(/"/g, '""')}"`;
}

function csvRow(values) {
  return values.map(csvCell).join(',');
}

function csvList(values) {
  return values.filter(Boolean).join(csv.listSeparator);
}

function usQualityCoreProfileName(mapping, profilesById) {
  const id = urlTail(mapping.profile);
  const profile = profilesById.get(id);
  if (!profile) {
    throw new Error(
      `Unable to resolve local ${labels.implementationGuide} profile ${mapping.profile}.`
    );
  }
  return profile.name ?? id;
}

function mappedUsQualityCoreElementNames(mapping, profilesById) {
  const profileName = usQualityCoreProfileName(mapping, profilesById);
  return (mapping.elements ?? []).map(elementPath => elementPath.replace(/^[^.]+/, profileName));
}

function profileUrl(mapping) {
  return mapping.profile;
}

function uscdiQualityCsvRows(dataElements, profilesById) {
  const header = [
    'Class',
    'Name',
    'Description',
    'Mapped US Core Profiles',
    `Mapped ${labels.implementationGuide} Profiles`,
    `Mapped ${labels.implementationGuide} Elements`
  ];

  return [
    header,
    ...dataElements.map(dataElement => {
      const usCoreProfiles = uniqueMappings(dataElement.mappings?.usCore).map(mapping =>
        profileUrl(mapping)
      );
      const usQualityCoreMappings = uniqueMappings(dataElement.mappings?.usQualityCore);
      const usQualityCoreProfiles = usQualityCoreMappings.map(mapping =>
        profileUrl(mapping)
      );
      const usQualityCoreElements = usQualityCoreMappings.flatMap(mapping =>
        mappedUsQualityCoreElementNames(mapping, profilesById)
      );

      return [
        dataElement.class,
        dataElement.name,
        dataElement.description,
        csvList(usCoreProfiles),
        csvList(usQualityCoreProfiles),
        csvList(usQualityCoreElements)
      ];
    })
  ];
}

function uscdiQualityCsv(dataElements, profilesById) {
  return `${uscdiQualityCsvRows(dataElements, profilesById).map(csvRow).join('\n')}\n`;
}

function writeUscdiQualityCsv(dataElements, profilesById) {
  ensureDir(path.dirname(paths.generatedUscdiQualityCsvFile));
  write(
    paths.generatedUscdiQualityCsvFile,
    uscdiQualityCsv(dataElements, profilesById)
  );
}

async function main(log) {
  const dataElements = await log.step(
    `Reading ${labels.uscdiQuality} mappings`,
    readUscdiQualityData
  );
  const { byId: profilesById } = await log.step('Parsing authored FSH profiles', () =>
    profileMaps(parseFsh(FSH_FILES))
  );

  await log.step(`Checking ${labels.uscdiQuality} mappings`, () =>
    assertAllDataElementsMapped(dataElements)
  );
  await log.step(`Writing ${labels.uscdiQuality} CSV download`, () =>
    writeUscdiQualityCsv(dataElements, profilesById)
  );

  return [
    `Generated ${labels.uscdiQuality} CSV download at ${paths.generatedUscdiQualityCsvFile}`,
    `${labels.uscdiQuality} data elements: ${dataElements.length}`
  ];
}

runGenerator('generate:uscdi-quality-csv', main);
