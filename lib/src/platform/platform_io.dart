import 'dart:io';

class GeneralPlatform {
  static bool get isAndroid => Platform.isAndroid;

  static bool get isDesktop =>
      Platform.isMacOS || Platform.isWindows || Platform.isLinux;

  static bool get isFuchsia => Platform.isFuchsia;

  static bool get isIOS => Platform.isIOS;

  static bool get isLinux => Platform.isLinux;

  static bool get isMacOS => Platform.isMacOS;

  static bool get isWeb => false;

  static bool get isWindows => Platform.isWindows;
}
