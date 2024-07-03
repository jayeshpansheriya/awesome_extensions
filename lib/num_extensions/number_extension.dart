part of '../awesome_extensions.dart';

extension NumExt on num {
  Duration get days {
    return Duration(hours: (this * Duration.hoursPerDay).round());
  }

  Duration get hours {
    return Duration(minutes: (this * Duration.minutesPerHour).round());
  }

  Duration get minutes {
    return Duration(seconds: (this * Duration.secondsPerMinute).round());
  }

  Duration get seconds {
    return Duration(milliseconds: (this * 1000).round());
  }

  Duration get milliseconds {
    return Duration(microseconds: (this * 1000).round());
  }

  Future delay([FutureOr Function()? callback]) async {
    return Future.delayed(
      Duration(milliseconds: (this * 1000).round()),
      callback,
    );
  }

  num increment() {
    return this + 1;
  }

  num decrement() {
    return this - 1;
  }

  num add(num b) {
    return this + b;
  }

  num subtract(num b) {
    return this - b;
  }

  num multiply(num b) {
    return this * b;
  }

  num divide(num b) {
    return this / b;
  }

  bool isEqual(num b) {
    return this == b;
  }

  bool isGreaterThan(num b) {
    return this > b;
  }

  bool isGreaterOrEqual(num b) {
    return this >= b;
  }

  bool isLowerThan(num b) {
    return this < b;
  }

  bool isLowerOrEqual(num b) {
    return this <= b;
  }
}
