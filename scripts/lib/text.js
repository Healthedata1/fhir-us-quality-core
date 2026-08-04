function getOrSet(map, key, createValue) {
  if (!map.has(key)) map.set(key, createValue());
  return map.get(key);
}

function splitLines(text) {
  const lines = text.split('\n');
  const trailingNewline = lines.at(-1) === '';
  if (trailingNewline) lines.pop();
  return { lines, trailingNewline };
}

function joinLines(lines, trailingNewline) {
  return `${lines.join('\n')}${trailingNewline ? '\n' : ''}`;
}

function markdownText(value) {
  return String(value).replace(/\s+/g, ' ').trim();
}

function urlTail(value) {
  return String(value ?? '')
    .replace(/\|.*$/, '')
    .split('/')
    .at(-1);
}

function canonicalUrl(value) {
  return String(value ?? '').replace(/\|.*$/, '');
}

function canonicalWithVersion(resource) {
  return resource.version ? `${resource.url}|${resource.version}` : resource.url;
}

function jsonPathToFshPath(elementPath) {
  return elementPath
    .replace(/^[^.]+\./, '')
    .split('.')
    .map(part => part.replace(/^([^:]+):(.+)$/, '$1[$2]'))
    .join('.');
}

function fshPathToDisplayPath(fshPath) {
  return fshPath
    .split('.')
    .map(part => {
      const choiceSlice = part.match(/^([^[]+)\[x]\[([^\]]+)]$/);
      if (choiceSlice) return `${choiceSlice[1]}[x]:${choiceSlice[2]}`;

      return part.replace(/^([^[]+)\[([^\]]+)]$/, (_, name, bracket) =>
        bracket === 'x' ? `${name}[x]` : `${name}:${bracket}`
      );
    })
    .join('.');
}

function elementIdToFshPath(elementId) {
  return elementId
    .split('.')
    .slice(1)
    .map(part => part.replace(/^([^:]+):(.+)$/, '$1[$2]'))
    .join('.');
}

module.exports = {
  canonicalUrl,
  canonicalWithVersion,
  elementIdToFshPath,
  fshPathToDisplayPath,
  getOrSet,
  joinLines,
  jsonPathToFshPath,
  markdownText,
  splitLines,
  urlTail
};
