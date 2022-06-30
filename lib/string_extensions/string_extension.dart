part of '../awesome_extensions.dart';

extension StringExtension on String {
  /// Capitalize each word inside string
  /// Example: your name => Your Name, your name => Your name
  String capitalize() {
    if (isEmpty) return this;
    return split(' ').map((e) => e.capitalize()).join(' ');
  }

  /// Uppercase first letter inside string and let the others lowercase
  /// Example: your name => Your name
  String capitalizeFirst() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  /// Remove all whitespace inside string
  /// Example: your name => yourname
  String removeAllWhitespace() {
    return replaceAll(' ', '');
  }

  bool hasMatch(String pattern) {
    return RegExp(pattern).hasMatch(this);
  }

  /// Checks if string consist only numeric.
  /// Numeric only doesn't accepting "." which double data type have
  bool isNumericOnly() => hasMatch(r'^\d+$');

  /// Checks if string consist only Alphabet. (No Whitespace)
  bool isAlphabetOnly() => hasMatch(r'^[a-zA-Z]+$');

  /// Checks if string contains at least one Capital Letter
  bool hasCapitalletter() => hasMatch(r'[A-Z]');

  /// Checks if string is boolean.
  bool isBool() {
    return (this == 'true' || this == 'false');
  }
}
