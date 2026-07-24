const fs = require('fs');

const { paths } = require('../generator.config');

function read(file) {
  return fs.readFileSync(file, 'utf8');
}

function readJson(file) {
  return JSON.parse(read(file));
}

function readUscdiQualityData() {
  return readJson(paths.uscdiQualityDataFile);
}

function readRestData() {
  return readJson(paths.restDataFile);
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
  readRestData,
  readUscdiQualityData,
  write,
  writeJson,
  ensureDir
};
