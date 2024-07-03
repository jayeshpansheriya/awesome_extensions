part of '../awesome_extensions.dart';

extension StringExt on String {
  String get capitalize => split(' ').map((str) => str.capitalizeFirst).join(' ');

  String get capitalizeFirst => "${this[0].toUpperCase()}${substring(1).toLowerCase()}";

  bool get hasCapitalletter => hasMatch(r'[A-Z]');

  bool get is7Z => hasMatch(r'^.+\.7z$');

  bool get isAlphabetOnly => hasMatch(r'^[a-zA-Z]+$');

  bool get isAlphanumeric => hasMatch(r'^[a-zA-Z0-9]+$');

  bool get isAPK => hasMatch(r'^.+\.apk$');

  bool get isBool => this == 'true' || this == 'false';

  bool get isCSV => hasMatch(r'^.+\.csv$');

  bool get isDOC => hasMatch(r'^.+\.doc$');

  bool get isDOCX => hasMatch(r'^.+\.docx$');

  bool get isDouble => double.tryParse(this) != null;

  bool get isEmail => hasMatch(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  bool get isGIF => hasMatch(r'^.+\.gif$');

  bool get isGZ => hasMatch(r'^.+\.gz$');

  bool get isHexColor => hasMatch(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$');

  bool get isInt => int.tryParse(this) != null;

  bool get isJPEG => hasMatch(r'^.+\.jpeg$');

  bool get isJPG => hasMatch(r'^.+\.jpg$');

  bool get isLowerCase => hasMatch(r'^[a-z]+$');

  bool get isMP3 => hasMatch(r'^.+\.mp3$');

  bool get isMP4 => hasMatch(r'^.+\.mp4$');

  bool get isMPEG => hasMatch(r'^.+\.mpeg$');

  bool get isMPG => hasMatch(r'^.+\.mpg$');

  bool get isNumeric => double.tryParse(this) != null;

  bool get isNumericOnly => hasMatch(r'^\d+$');

  bool get isPDF => hasMatch(r'^.+\.pdf$');

  bool get isPhoneNumber => hasMatch(r'^[0-9\-\+\s\(\)]{10,20}$');

  bool get isPNG => hasMatch(r'^.+\.png$');

  bool get isPPT => hasMatch(r'^.+\.ppt$');

  bool get isPPTX => hasMatch(r'^.+\.pptx$');

  bool get isRAR => hasMatch(r'^.+\.rar$');

  bool get isRTF => hasMatch(r'^.+\.rtf$');

  bool get isSVG => isEmpty ? false : endsWith(".svg");

  bool get isTAR => hasMatch(r'^.+\.tar$');

  bool get isTXT => hasMatch(r'^.+\.txt$');

  bool get isUpperCase => hasMatch(r'^[A-Z]+$');

  bool get isURL => hasMatch(r'^http(s)?://([\w-]+.)+[\w-]+(/[\w- ./?%&=])?$');

  bool get isValidDate => DateTime.tryParse(this) != null;

  bool get isXLS => hasMatch(r'^.+\.xls$');

  bool get isXLSX => hasMatch(r'^.+\.xlsx$');

  bool get isZIP => hasMatch(r'^.+\.zip$');

  String get removeWhitespace => replaceAll(' ', '');

  bool hasMatch(String pattern) => RegExp(pattern).hasMatch(this);

  String ifIsEmpty(String fallback) => isEmpty ? fallback : this;
}
