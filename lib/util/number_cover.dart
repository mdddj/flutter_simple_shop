library numeral;

class Numeral {
  final num _number;

  Numeral._(this._number);

  /// Create [Numeral] class.
  ///
  /// The Factory create a [Numeral] class instance.
  ///
  /// [number] is num [Type].
  ///
  /// return [Numeral] instance.
  factory Numeral(num number) {
    assert(number is num, 'The data to be processed must be passed in a [num].');

    return Numeral._(number);
  }

  /// Get a [number] for double value.
  ///
  /// Get the [_number] to [double] Type value.
  double get number => _number.toDouble();

  /// Format [number] to beautiful [String].
  ///
  /// E.g:
  /// ```dart
  /// Numeral(1000).value(); // -> 1K
  /// ```
  ///
  /// return a [String] type.
  String value() {
    // Formated value.
    var value = number;
    var absolute = number.abs();

    // String suffix.
    var abbr = '';

    // If number > 1 trillion.

    // If number > 1 thousand.
    if (absolute >= 10000) {
      value = number / 10000;
      abbr = '万';
    }

    return _removeEndsZore(value.toStringAsFixed(1)) + abbr;
  }

  /// Remove value ends with zore.
  ///
  /// Remove formated value ends with zore,
  /// replace to zore string.
  ///
  /// [value] type is [String].
  ///
  /// return a [String] type.
  String _removeEndsZore(String value) {
    if (value.length == 1) {
      return value;
    } else if (value.endsWith('.')) {
      return value.substring(0, value.length - 1);
    } else if (value.endsWith('0')) {
      return _removeEndsZore(value.substring(0, value.length - 1));
    }

    return value;
  }

  /// Get formated value.
  ///
  /// Get the [value] function value.
  ///
  /// return a [String] type.
  @override
  String toString() => value();
}
