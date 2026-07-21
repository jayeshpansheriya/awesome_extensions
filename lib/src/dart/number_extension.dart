import 'dart:async';

extension NumExtension on num {
  Duration get days => .new(hours: (this * Duration.hoursPerDay).round());

  Duration get hours => .new(minutes: (this * Duration.minutesPerHour).round());

  /// print(1.seconds + 200.milliseconds);
  /// print(1.hours + 30.minutes);
  /// print(1.5.hours);
  ///```
  Duration get milliseconds => .new(microseconds: (this * 1000).round());

  Duration get minutes =>
      .new(seconds: (this * Duration.secondsPerMinute).round());

  Duration get seconds => .new(milliseconds: (this * 1000).round());

  num add(num b) => this + b;

  num decrement() => this - 1;

  ///   print('+ wait for 2 seconds');
  ///   await 2.delay();
  ///   print('- 2 seconds completed');
  ///   print('+ callback in 1.2sec');
  ///   1.delay(() => print('- 1.2sec callback called'));
  ///   print('currently running callback 1.2sec');
  Future delay([FutureOr Function()? callback]) async =>
      Future.delayed(.new(milliseconds: (this * 1000).round()), callback);

  num divide(num b) => this / b;

  num increment() => this + 1;

  bool isEqual(num b) => this == b;

  bool isGreaterOrEqual(num b) => this >= b;

  bool isGreaterThan(num b) => this > b;

  bool isLowerOrEqual(num b) => this <= b;

  bool isLowerThan(num b) => this < b;

  num multiply(num b) => this * b;

  num subtract(num b) => this - b;

  /// Rounds number to specified decimal places
  /// Example: 3.14159.roundToDecimal(2) => 3.14
  double roundToDecimal(int decimalPlaces) {
    final mod = num.parse('1${'0' * decimalPlaces}');
    return ((this * mod).round().toDouble()) / mod;
  }

  /// Formats number as currency string
  /// Example: 12.5.toCurrency() => "$12.50"
  String toCurrency({String symbol = '\$', int decimalDigits = 2}) {
    return '$symbol${toStringAsFixed(decimalDigits)}';
  }

  /// Formats double as percentage string
  /// Example: 0.75.toPercent() => "75%"
  String toPercent({int decimalDigits = 0}) {
    final value = this * 100;
    return '${value.toStringAsFixed(decimalDigits)}%';
  }
}
