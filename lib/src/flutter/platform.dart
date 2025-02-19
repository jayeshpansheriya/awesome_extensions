import 'package:awesome_extensions/src/flutter/platform/platform_web.dart'
    if (dart.library.io) 'package:awesome_extensions/src/flutter/platform/platform_io.dart';

class MyPlatform {
  static bool get isAndroid => GeneralPlatform.isAndroid;

  static bool get isDesktop =>
      MyPlatform.isMacOS || MyPlatform.isWindows || MyPlatform.isLinux;

  static bool get isFuchsia => GeneralPlatform.isFuchsia;

  static bool get isIOS => GeneralPlatform.isIOS;

  static bool get isLinux => GeneralPlatform.isLinux;

  static bool get isMacOS => GeneralPlatform.isMacOS;

  static bool get isMobile => MyPlatform.isIOS || MyPlatform.isAndroid;

  static bool get isWeb => GeneralPlatform.isWeb;

  static bool get isWindows => GeneralPlatform.isWindows;
}
