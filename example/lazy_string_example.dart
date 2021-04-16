import 'package:lazy_string/lazy_string.dart';

void main() {
  // for camelize
  LazyString.camelize('lazy-string'); // => "lazyString"
  LazyString.camelize('-lazy-string'); // => "LazyString"
  LazyString.camelize('_lazy_string'); // => "LazyString"
  LazyString.camelize('Lazy_string'); // => "LazyString"

  // for underscored
  LazyString.underscored('LazyString'); // => "lazy_string"

  // for dasherize
  LazyString.dasherize('LazyString'); // => "-lazy-string"

  // for humanize
  LazyString.humanize('  capitalize dash-CamelCase_underscore trim  ');
  // => "Capitalize dash camel case underscore trim"

  // for words
  LazyString.words('   lazy   string   '); // => ["lazy", "string"]
  LazyString.words('lazy_string', delimiter: '_'); // => ["lazy", "string"]

  // for repeat
  LazyString.repeat('lazy', count: 3); // => "lazylazylazy"
  LazyString.repeat('lazy', count: 2, separator: 'string');
  // => "lazystringlazy"

  // for count
  LazyString.count('Hello world', 'l'); // => 3

  // for reverse
  LazyString.reverse('Music 𝄞 make happy'); // => "yppah ekam 𝄞 cisuM"

  // for clean
  LazyString.clean('   lazy    string   '); // => "lazy string"

  // for chars
  LazyString.chars('lazystring');
  // => ["l", "a", "z", "y", "s", "t", "r", "i", "n", "g"]

  // for classify
  LazyString.classify('lazy_string'); // => "LazyString"
}
