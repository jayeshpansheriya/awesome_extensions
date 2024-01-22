part of '../awesome_extensions.dart';

extension MediaQueryExt on BuildContext {
  /// The same of [MediaQuery.of(context).size]
  Size get mediaQuerySize => MediaQuery.of(this).size;

  /// The same of [MediaQuery.of(context).size.height]
  /// Note: updates when you rezise your screen (like on a browser or
  /// desktop window)
  /// performs a simple [Theme.of(context).size] action and returns given [height or width]
  double get height => mediaQuerySize.height;

  /// The same of [MediaQuery.of(context).size.width]
  /// Note: updates when you rezise your screen (like on a browser or
  /// desktop window)
  double get width => mediaQuerySize.width;

  /// similar to [MediaQuery.of(context).padding]
  EdgeInsets get mediaQueryPadding => MediaQuery.of(this).padding;

  /// similar to [MediaQuery.of(context).viewPadding]
  EdgeInsets get mediaQueryViewPadding => MediaQuery.of(this).viewPadding;

  /// similar to [MediaQuery.of(context).viewInsets]
  EdgeInsets get mediaQueryViewInsets => MediaQuery.of(this).viewInsets;

  /// similar to [MediaQuery.of(context).orientation]
  Orientation get orientation => MediaQuery.of(this).orientation;

  /// check if device is on landscape mode
  bool get isLandscape => orientation == Orientation.landscape;

  /// check if device is on portrait mode
  bool get isPortrait => orientation == Orientation.portrait;

  bool get alwaysUse24HourFormat => MediaQuery.of(this).alwaysUse24HourFormat;

  /// similar to [MediaQuery.of(this).devicePixelRatio]
  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;

  Brightness get platformBrightness => MediaQuery.of(this).platformBrightness;

  /// get the shortestSide from screen
  double get mediaQueryShortestSide => mediaQuerySize.shortestSide;

  /// True if width be larger than 800
  bool get showNavbar => (width > 800);

  /// True if the shortestSide is smaller than 600p
  bool get isPhone => (mediaQueryShortestSide < 600);

  /// True if the shortestSide is largest than 600p
  bool get isSmallTablet => (mediaQueryShortestSide >= 600);

  /// True if the shortestSide is largest than 720p
  bool get isLargeTablet => (mediaQueryShortestSide >= 720);

  /// True if the current device is Tablet
  bool get isTablet => isSmallTablet || isLargeTablet;

  /// Returns a specific value according to the screen size
  /// if the device width is higher than or equal to 1200 return
  /// [desktop] value. if the device width is higher than  or equal to 600
  /// and less than 1200 return [tablet] value.
  /// if the device width is less than 300  return [watch] value.
  /// in other cases return [mobile] value.
  T? responsiveValue<T>({
    T? mobile,
    T? tablet,
    T? desktop,
  }) {
    var deviceWidth = mediaQuerySize.shortestSide;
    if (MyPlatform.isDesktop) {
      deviceWidth = mediaQuerySize.width;
    }
    if (deviceWidth >= 1200 && desktop != null) return desktop;
    if (deviceWidth >= 600 && tablet != null) return tablet;
    return mobile;
  }

  /// This change makes MediaQuery an InheritedModel rather than an InheritedWidget,
  /// so any widget which knows it only depends on a
  /// specific property of MediaQuery the ability to declare that when reading the MediaQuery from the context.

  /// The same of MediaQuery.sizeOf(context)
  Size get mqSize => MediaQuery.sizeOf(this);

  /// The same of MediaQuery.sizeOf(context).height
  double get mqHeight => mqSize.height;

  /// The same of [MediaQuery.sizeOf(context).width]
  /// Note: updates when you rezise your screen (like on a browser or
  /// desktop window)
  double get mqWidth => mqSize.width;

  /// similar to [ MediaQuery.paddingOf(context)]
  EdgeInsets get mqPadding => MediaQuery.paddingOf(this);

  /// similar to [MediaQuery.viewPaddingOf(context)]
  EdgeInsets get mqViewPadding => MediaQuery.viewPaddingOf(this);

  /// similar to [MediaQuery.viewInsetsOf(context)]
  EdgeInsets get mqViewInsets => MediaQuery.viewInsetsOf(this);

  /// similar to [MediaQuery.orientationOf(context)]
  Orientation get mqOrientation => MediaQuery.orientationOf(this);

  /// similar to [MediaQuery.alwaysUse24HourFormatOf(context)]
  bool get mqAlwaysUse24HourFormat => MediaQuery.alwaysUse24HourFormatOf(this);

  /// similar to [MediaQuery.devicePixelRatioOf(context)]
  double get mqDevicePixelRatio => MediaQuery.devicePixelRatioOf(this);

  /// similar to [MediaQuery.platformBrightnessOf(context)]
  Brightness get mqPlatformBrightness => MediaQuery.platformBrightnessOf(this);

  /// similar to [MediaQuery.textScaleFactorOf(context)]
  TextScaler get mqTextScaleFactor => MediaQuery.textScalerOf(this);
}
