extension DateOnlyCompare on DateTime {
  bool get isToday {
    DateTime nowDate = .now();
    return year == nowDate.year && month == nowDate.month && day == nowDate.day;
  }

  bool get isYesterday {
    DateTime nowDate = .now();
    Duration oneDay = .new(days: 1);
    return nowDate.subtract(oneDay).isSameDate(this);
  }

  bool get isTomorrow {
    DateTime nowDate = .now();
    Duration oneDay = .new(days: 1);
    return nowDate.add(oneDay).isSameDate(this);
  }

  bool get isLeapYear {
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
  }

  int get daysInMonth {
    return DateTime(year, month + 1, 0).day;
  }

  DateTime get startOfDay {
    return .new(year, month, day);
  }

  DateTime get endOfDay {
    return .new(year, month, day, 23, 59, 59, 999, 999);
  }

  DateTime addDays(int days) => add(.new(days: days));

  DateTime subtractDays(int days) => subtract(.new(days: days));

  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  bool isSameMonth(DateTime other) {
    return year == other.year && month == other.month;
  }

  bool isSameYear(DateTime other) {
    return year == other.year;
  }

  /// Format datetime as relative time string (e.g., "just now", "5 minutes ago")
  String get timeAgo {
    final now = DateTime.now();
    final difference = now.difference(this);

    if (difference.inSeconds < 5) {
      return 'just now';
    } else if (difference.inSeconds < 60) {
      return '${difference.inSeconds} seconds ago';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} minute${difference.inMinutes == 1 ? '' : 's'} ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hour${difference.inHours == 1 ? '' : 's'} ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} day${difference.inDays == 1 ? '' : 's'} ago';
    } else if (difference.inDays < 30) {
      final weeks = (difference.inDays / 7).floor();
      return '$weeks week${weeks == 1 ? '' : 's'} ago';
    } else if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      return '$months month${months == 1 ? '' : 's'} ago';
    } else {
      final years = (difference.inDays / 365).floor();
      return '$years year${years == 1 ? '' : 's'} ago';
    }
  }
}
