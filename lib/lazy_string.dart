library lazy_string;

String camelize(String text) {
  return text.replaceAllMapped(RegExp(r'[-_\s]+(.)?'), (match) {
    return match.group(match.groupCount).toString().toUpperCase();
  });
}

String underscored(String text) {
  return text
      .replaceAllMapped(RegExp(r'([a-z\d])([A-Z]+)'), (match) {
        var d = text.substring(match.start, match.end);
        return '${d[0]}_${d[1]}';
      })
      .replaceAll(RegExp(r'[-\s]+'), '_')
      .toLowerCase();
}

String dasherize(String text) {
  return text
      .replaceAllMapped(RegExp(r'([A-Z])'), (match) {
        var d = text.substring(match.start, match.end);
        return '-$d';
      })
      .replaceAll(RegExp(r'[-_\s]+'), '-')
      .toLowerCase();
}

String humanize(String text) {
  return capitalize(underscored(text.trim()).replaceAll('_', ' '));
}

String capitalize(String text) {
  var remaining = text.substring(1).toLowerCase();
  return text.substring(0, 1).toUpperCase() + remaining;
}

List<String> words(String text, {String delimiter}) {
  if (isBlank(text)) return [];
  return text.trim().split(RegExp(delimiter ?? r'\s+'));
}

String repeat(String text, {int count = 1, String separator}) {
  var result = [];

  for (var i = 0; i < count; i++) {
    result.add(text);
  }

  return separator == null ? result.join() : result.join(separator);
}

bool isBlank(String text) {
  return RegExp(r'^\s*$').hasMatch(text);
}

int count(String text, String char) {
  if (text.isEmpty || char.isEmpty) return 0;

  return text.split(char).length - 1;
}

String reverse(String text) {
  return String.fromCharCodes(text.runes.toList().reversed);
}
