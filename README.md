# lazy_string

This package can help people who are _lazier_ and _beginner_ to the faster when they use `String` and make a lot of function.

## Usage

### camelize(String text) => String

Converts underscored or dasherized String to a camelized one. Begins with a lower case letter unless it starts with an underscore, dash or an upper case letter.

```dart
camelize('lazy-string');
// => "lazyString"

camelize('-lazy-string');
// => "LazyString"

camelize('_lazy_string');
// => "LazyString"

camelize('Lazy_string');
// => "LazyString"
```

### underscored(String text) => String

Converts a camelized or dasherized String into an underscored one.

```dart
underscored('LazyString');
// => "lazy_string"
```

### dasherize(String text) => String

Converts a underscored or camelized String into an dasherized one.

```dart
dasherize('LazyString');
// => "-lazy-string"
```

### humanize(String text) => String

Converts an underscored, camelized, or dasherized String into a humanized one. Also removes beginning and ending whitespace, and removes the postfix '_id'.

```dart
humanize('  capitalize dash-CamelCase_underscore trim  ');
// => "Capitalize dash camel case underscore trim"
```

### words(String text, {String delimiter}) => List\<String\>

Split string by delimiter (String or Pattern), /\s+/ by default.

```dart
words("   I   love   you   ");
// => ["I", "love", "you"]

words("I_love_you", delimiter: "_");
// => ["I", "love", "you"]

words("   ")
// => []
```

### repeat(String text, {int count, String separator}) => String

Repeats a string count times.

```dart
repeat("foo", 3);
// => "foofoofoo"

repeat('lazy', count: 2, separator: 'string')
// => "lazystringlazy"
```

### count(String text, String char) => int

Returns int of occurrences of char in String.

```dart
count("Hello world", "l");
// => 3
```

### reverse(String text) => String

Return reversed string.

```dart
reverse('Music 𝄞 make happy');
// => "yppah ekam 𝄞 cisuM"
```