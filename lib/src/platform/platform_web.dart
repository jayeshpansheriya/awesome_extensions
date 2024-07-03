import 'package:web/web.dart' as html;

html.Navigator _navigator = html.window.navigator;

class GeneralPlatform {
  // @check https://developer.chrome.com/multidevice/user-agent
  static bool get isAndroid => _navigator.appVersion.contains('Android ');

  static bool get isDesktop => isMacOS || isWindows || isLinux;

  static bool get isFuchsia => false;

  static bool get isIOS {
    // maxTouchPoints is needed to separate iPad iOS13 vs new MacOS
    return hasMatch(_navigator.platform, r'/iPad|iPhone|iPod/') ||
        (_navigator.platform == 'MacIntel' && _navigator.maxTouchPoints > 1);
  }

  static bool get isLinux =>
      (_navigator.appVersion.contains('Linux') ||
          _navigator.appVersion.contains('x11')) &&
      !isAndroid;

  static bool get isMacOS =>
      _navigator.appVersion.contains('Mac OS') && !GeneralPlatform.isIOS;

  static bool get isWeb => true;

  static bool get isWindows => _navigator.appVersion.contains('Win');

  static bool hasMatch(String? value, String pattern) {
    return (value == null) ? false : RegExp(pattern).hasMatch(value);
  }
}
