import 'dart:async';

extension NumExtension on num {
  Duration get days => Duration(hours: (this * Duration.hoursPerDay).round());

  Duration get hours =>
      Duration(minutes: (this * Duration.minutesPerHour).round());

  /// print(1.seconds + 200.milliseconds);
  /// print(1.hours + 30.minutes);
  /// print(1.5.hours);
  ///```
  Duration get milliseconds => Duration(microseconds: (this * 1000).round());

  Duration get minutes =>
      Duration(seconds: (this * Duration.secondsPerMinute).round());

  Duration get seconds => Duration(milliseconds: (this * 1000).round());

  num add(num b) => this + b;

  num decrement() => this - 1;

  ///   print('+ wait for 2 seconds');
  ///   await 2.delay();
  ///   print('- 2 seconds completed');
  ///   print('+ callback in 1.2sec');
  ///   1.delay(() => print('- 1.2sec callback called'));
  ///   print('currently running callback 1.2sec');
  Future delay([FutureOr Function()? callback]) async =>
      Future.delayed(Duration(milliseconds: (this * 1000).round()), callback);

  num divide(num b) => this / b;

  num increment() => this + 1;

  bool isEqual(num b) => this == b;

  bool isGreaterOrEqual(num b) => this >= b;

  bool isGreaterThan(num b) => this > b;

  bool isLowerOrEqual(num b) => this <= b;

  bool isLowerThan(num b) => this < b;

  num multiply(num b) => this * b;

  num subtract(num b) => this - b;
}
