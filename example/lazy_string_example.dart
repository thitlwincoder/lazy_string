import 'package:lazy_string/lazy_string.dart';

void main() {
  // for camelize
  camelize('lazy-string'); // => "lazyString"
  camelize('-lazy-string'); // => "LazyString"
  camelize('_lazy_string'); // => "LazyString"
  camelize('Lazy_string'); // => "LazyString"

  // for underscored
  underscored('LazyString'); // => "lazy_string"

  // for dasherize
  dasherize('LazyString'); // => "-lazy-string"

  // for humanize
  humanize('  capitalize dash-CamelCase_underscore trim  ');
  // => "Capitalize dash camel case underscore trim"

  // for words
  words('   lazy   string   '); // => ["lazy", "string"]
  words('lazy_string', delimiter: '_'); // => ["lazy", "string"]

  // for repeat
  repeat('lazy', count: 3); // => "lazylazylazy"
  repeat('lazy', count: 2, separator: 'string'); // => "lazystringlazy"

  // for count
  count('Hello world', 'l'); // => 3

  // for reverse
  reverse('Music 𝄞 make happy'); // => "yppah ekam 𝄞 cisuM"

  // for clean
  clean('   lazy    string   '); // => "lazy string"

  // for chars
  chars('lazystring'); // => ["l", "a", "z", "y", "s", "t", "r", "i", "n", "g"]

  // for classify
  classify('lazy_string'); // => "LazyString"
}
