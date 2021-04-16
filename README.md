# lazy_string

This package can help people who are _lazier_ and _beginner_ to the faster when they use `String` and make a lot of function.

## Usage

### camelize(String text) => String

Converts underscored or dasherized String to a camelized one. Begins with a lower case letter unless it starts with an underscore, dash or an upper case letter.

```dart
LazyString.camelize('lazy-string');
// => "lazyString"

LazyString.camelize('-lazy-string');
// => "LazyString"

LazyString.camelize('_lazy_string');
// => "LazyString"

LazyString.camelize('Lazy_string');
// => "LazyString"
```

### underscored(String text) => String

Converts a camelized or dasherized String into an underscored one.

```dart
LazyString.underscored('LazyString');
// => "lazy_string"
```

### dasherize(String text) => String

Converts a underscored or camelized String into an dasherized one.

```dart
LazyString.dasherize('LazyString');
// => "-lazy-string"
```

### humanize(String text) => String

Converts an underscored, camelized, or dasherized String into a humanized one. Also removes beginning and ending whitespace, and removes the postfix '_id'.

```dart
LazyString.humanize('  capitalize dash-CamelCase_underscore trim  ');
// => "Capitalize dash camel case underscore trim"
```

### words(String text, {String delimiter}) => List\<String\>

Split string by delimiter (String or Pattern), /\s+/ by default.

```dart
LazyString.words("   lazy   string   ");
// => ["lazy", "string"]

LazyString.words("lazy_string", delimiter: "_");
// => ["lazy", "string"]

LazyString.words("   ")
// => []
```

### chars(String text) => List\<String\>


```dart
LazyString.chars('lazystring');
// => ["l", "a", "z", "y", "s", "t", "r", "i", "n", "g"]

```

### repeat(String text, {int count, String separator}) => String

Repeats a string count times.

```dart
LazyString.repeat("lazy", count: 3);
// => "lazylazylazy"

LazyString.repeat('lazy', count: 2, separator: 'string');
// => "lazystringlazy"
```

### count(String text, String char) => int

Returns int of occurrences of char in String.

```dart
LazyString.count("Hello world", "l");
// => 3
```

### reverse(String text) => String

Return reversed string.

```dart
LazyString.reverse('Music 𝄞 make happy');
// => "yppah ekam 𝄞 cisuM"
```

### clean(String text) => String

Trim and replace multiple spaces with a single space.

```dart
LazyString.clean('   lazy    string   '); 
// => "lazy string"
```

### classify(String text) => String

Converts string to camelized class name. First letter is always upper case

```dart
LazyString.classify('lazy_string'); 
// => "LazyString"
```