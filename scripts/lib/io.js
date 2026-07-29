const fs = require('fs');

const { paths } = require('../generator.config');

function read(file) {
  return fs.readFileSync(file, 'utf8');
}

function readJson(file) {
  return JSON.parse(read(file));
}

function readUscdiQualityDefinitions() {
  return readJson(paths.uscdiQualityDefinitionsFile);
}

function readSearchCapabilities() {
  return readJson(paths.searchCapabilitiesFile);
}

function write(file, text) {
  fs.writeFileSync(file, text);
}

function writeJson(file, value) {
  write(file, `${JSON.stringify(value, null, 2)}\n`);
}

function ensureDir(dir) {
  fs.mkdirSync(dir, { recursive: true });
}

module.exports = {
  fs,
  read,
  readJson,
  readSearchCapabilities,
  readUscdiQualityDefinitions,
  write,
  writeJson,
  ensureDir
};
