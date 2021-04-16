library lazy_string;

class LazyString {
  static String camelize(String text) => text.replaceAllMapped(
        RegExp(r'[-_\s]+(.)?'),
        (match) => match.group(match.groupCount).toString().toUpperCase(),
      );

  static String underscored(String text) => text
      .replaceAllMapped(RegExp(r'([a-z\d])([A-Z]+)'), (match) {
        final d = text.substring(match.start, match.end);
        return '${d[0]}_${d[1]}';
      })
      .replaceAll(RegExp(r'[-\s]+'), '_')
      .toLowerCase();

  static String dasherize(String text) => text
      .replaceAllMapped(RegExp(r'([A-Z])'), (match) {
        final d = text.substring(match.start, match.end);
        return '-$d';
      })
      .replaceAll(RegExp(r'[-_\s]+'), '-')
      .toLowerCase();

  static String humanize(String text) =>
      _capitalize(underscored(text.trim()).replaceAll('_', ' '));

  static String _capitalize(String text, {bool lowercase = false}) {
    final remaining =
        lowercase ? text.substring(1).toLowerCase() : text.substring(1);
    return text.substring(0, 1).toUpperCase() + remaining;
  }

  static List<String> words(String text, {String? delimiter}) {
    if (_isBlank(text)) return [];
    return text.trim().split(RegExp(delimiter ?? r'\s+'));
  }

  static String repeat(String text, {int count = 1, String? separator}) {
    final result = [];

    for (var i = 0; i < count; i++) {
      result.add(text);
    }

    return separator == null ? result.join() : result.join(separator);
  }

  static bool _isBlank(String text) => RegExp(r'^\s*$').hasMatch(text);

  static int count(String text, String char) {
    if (text.isEmpty || char.isEmpty) return 0;

    return text.split(char).length - 1;
  }

  static String reverse(String text) =>
      String.fromCharCodes(text.runes.toList().reversed);

  static String clean(String text) =>
      text.trim().replaceAll(RegExp(r'\s\s+'), ' ');

  static List<String> chars(String text) => text.split('');

  static String classify(String text) =>
      _capitalize(camelize(text.replaceAll(r'_', ' ')).replaceAll(r'\s', ''));
}
