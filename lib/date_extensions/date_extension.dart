part of '../awesome_extensions.dart';

extension DateOnlyCompare on DateTime {
  String get dayName {
    return intl.DateFormat('EEEE').format(this);
  }

  bool get isToday {
    final nowDate = DateTime.now();
    return year == nowDate.year && month == nowDate.month && day == nowDate.day;
  }

  bool get isYesterday {
    final nowDate = DateTime.now();
    const oneDay = Duration(days: 1);
    return nowDate.subtract(oneDay).isSameDate(this);
  }

  String get monthName {
    return intl.DateFormat('MMMM').format(this);
  }

  String get shortDayName {
    return intl.DateFormat('EEE').format(this);
  }

  String get shortMonthName {
    return intl.DateFormat('MMM').format(this);
  }

  String get shortMonthYear {
    return intl.DateFormat('MMM yyyy').format(this);
  }

  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  bool isSameMonth(DateTime other) {
    return year == other.year && month == other.month;
  }

  bool isSameYear(DateTime other) {
    return year == other.year;
  }
}
