const path = require('node:path');

const igRoot = path.resolve(__dirname, '..');
const sourceDataDir = path.join(igRoot, 'data');
const fshDir = path.join(igRoot, 'input', 'fsh');
const generatedFshDir = path.join(fshDir, 'generated');
const generatedDataDir = path.join(igRoot, 'input', 'data', 'generated');
const generatedStaticAssetsDir = path.join(igRoot, 'input', 'images', 'generated');

module.exports = {
  labels: {
    implementationGuide: 'US Quality Core',
    uscdiQuality: 'USCDI+ Quality'
  },

  local: {
    profileIdPrefix: 'us-quality-core-',
    profileNamePrefix: 'USQualityCore',
    searchParameterIdPrefix: 'us-quality-core-',
    searchParameterNamePrefix: 'USQualityCore',
    preferredContactName: 'Clinical Quality Information WG',
    uscdiQualityExtensionId: 'us-quality-core-uscdi-quality-extension'
  },

  upstream: {
    usCore: {
      packageId: 'hl7.fhir.us.core',
      profileUrlPrefix: 'http://hl7.org/fhir/us/core/StructureDefinition/',
      searchParameterIdPrefix: 'us-core-',
      searchParameterUrlPrefix: 'http://hl7.org/fhir/us/core/SearchParameter/',
      serverCapabilityStatementUrl:
        'http://hl7.org/fhir/us/core/CapabilityStatement/us-core-server'
    }
  },

  fhir: {
    capabilityExpectationExtensionUrl:
      'http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation',
    searchParameterCombinationExtensionUrl:
      'http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination'
  },

  generated: {
    capabilityStatementRestRuleSetName:
      'GeneratedUSQualityCoreCapabilityStatementRest',
    uscdiQualityFlagsRuleSetPrefix: 'GeneratedUSCDIQualityFlags',
    uscdiQualityFlagInsertComment:
      '// Generated USCDI+ Quality flag insert. Keep this at the end of the profile so all element and slice rules exist before the RuleSet is applied.'
  },

  rest: {
    searchRequirementSelectionPath:
      'us-quality-core-general-requirements.html#search-requirement-selection',
    systemInteractions: {
      transaction: 'MAY',
      batch: 'MAY',
      'search-system': 'MAY',
      'history-system': 'MAY'
    },
    dateComparators: {
      eq: 'MAY',
      ne: 'MAY',
      gt: 'SHALL',
      ge: 'SHALL',
      lt: 'SHALL',
      le: 'SHALL',
      sa: 'MAY',
      eb: 'MAY',
      ap: 'MAY'
    },
    rationale: {
      temporalSearchParameters: [
        'authored',
        'date',
        'effective-time',
        'recorded-date'
      ],
      filterLabels: {
        authored: 'authored date',
        'do-not-perform': 'a do-not-perform indicator',
        'effective-time': 'effective time',
        'recorded-date': 'recorded date'
      }
    }
  },

  csv: {
    listSeparator: '; '
  },

  pages: {
    uscdiQualityDataElementPath: 'uscdiquality.html'
  },

  paths: {
    igRoot,
    sourceDataDir,
    fshDir,
    generatedFshDir,
    generatedSearchParameterDir: path.join(
      generatedFshDir,
      'search-parameters'
    ),
    generatedFlagsFile: path.join(
      generatedFshDir,
      'USCDIQualityFlags.fsh'
    ),
    generatedCapabilityStatementRestFile: path.join(
      generatedFshDir,
      'USQualityCoreCapabilityStatementRest.fsh'
    ),
    generatedDataDir,
    generatedViewDataFiles: {
      profileNotes: 'profile_notes.json',
      profileTable: 'profile_table.json',
      dataElements: 'data_elements.json'
    },
    generatedUscdiQualityCsvFile: path.join(
      generatedStaticAssetsDir,
      'uscdi-quality-data-elements.csv'
    ),
    uscdiQualityDataFile: path.join(
      sourceDataDir,
      'uscdi_plus_quality.json'
    ),
    restDataFile: path.join(sourceDataDir, 'rest.json')
  }
};
