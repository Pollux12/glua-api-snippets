/**
 * Converts a string to lowerCamelCase
 *
 * @param str The string to convert
 * @returns The converted string
 */
export function toLowerCamelCase(str: string) {
  str = str.replace(/[_-]/g, ' ');
  return str.replace(/(?:^\w|\b\w)/g, (letter, index) => {
    return index === 0 ? letter.toLowerCase() : letter.toUpperCase();
  }).replace(/\s+/g, '');
}

/**
 * Replaces all newlines in a string with spaces
 */
export function removeNewlines(text: string) {
  return text.replace(/\r?\n/g, ' ');
}

/**
 * Puts a comment before each line in a string
 */
export function putCommentBeforeEachLine(text: string, skipLineOne: boolean = true) {
  // Remove duplicate consequitive new lines.
  while (text.match(/\r?\n\r?\n\r?\n/g)) {
    text = text.replace(/\r?\n\r?\n\r?\n/g, "\n\n");
  }

  return text.split(/\r?\n/g).map((line, index) => {
    if (index === 0 && skipLineOne)
      return line;

    line = line.trimEnd();
    let space = line.length > 0 ? ' ' : '';
    return `---${space}${line}`;
  }).join('\n');
}

/**
 * Makes a string safe for use as a file name
 *
 * @param str The string to make safe
 * @param replacement The string to replace unsafe characters with
 * @returns The safe string
 */
export function safeFileName(str: string, replacement: string = '_') {
  return str.replace(/[^a-z0-9_\-\. ]/gi, replacement);
}

/**
 * Escapes all single quotes in a string
 *
 * @param str The string to escape
 * @returns The escaped string
 */
export function escapeSingleQuotes(str: string) {
  return str.replace(/'/g, '\\\'');
}

/**
 * Indents all lines in a string by a given amount
 *
 * @param text The text to indent
 * @param indent The amount of spaces to indent by
 * @returns The indented text
 */
export function indentText(text: string, indent: number) {
  return text.split('\n').map(line => ' '.repeat(indent) + line).join('\n');
}
