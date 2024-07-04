part of '../awesome_extensions.dart';

/// Common breakpoints for screen sizes
const double _phoneBreakpoint = 768.0;

const double _tabletBreakpoint = 1024.0;

extension MediaQueryExt on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Size get mqSize => MediaQuery.sizeOf(this);

  double get height => mqSize.height;

  double get width => mqSize.width;

  double get shortestSide => mqSize.shortestSide;

  double get longestSide => mqSize.longestSide;

  double get aspectRation => mqSize.aspectRatio;

  EdgeInsets get mqPadding => MediaQuery.paddingOf(this);

  bool get use24HourFormat => MediaQuery.alwaysUse24HourFormatOf(this);

  bool get isInvertColors => MediaQuery.invertColorsOf(this);

  double get pixelRatio => MediaQuery.devicePixelRatioOf(this);

  EdgeInsets get viewInsets => MediaQuery.viewInsetsOf(this);

  EdgeInsets get viewPadding => MediaQuery.viewPaddingOf(this);

  Orientation get orientation => MediaQuery.orientationOf(this);

  TextScaler get textScaleFactor => MediaQuery.textScalerOf(this);

  Brightness get platformBrightness => MediaQuery.platformBrightnessOf(this);

  bool get isDisableAnimations => MediaQuery.disableAnimationsOf(this);

  bool get isAccessibleNavigation => MediaQuery.accessibleNavigationOf(this);

  bool get platformIsDarkMode => platformBrightness == Brightness.dark;

  bool get platformIsLightMode => platformBrightness == Brightness.light;

  EdgeInsets get horzMargin => EdgeInsets.symmetric(horizontal: width * 0.05);

  EdgeInsets get vertMargin => EdgeInsets.symmetric(vertical: height * 0.05);

  EdgeInsets get margin => EdgeInsets.all(width * 0.05);

  double get systemOverlaySize => MediaQuery.systemGestureInsetsOf(this).bottom;

  double get statusBarSize => mqPadding.top;

  double get appbarHeight => kToolbarHeight;

  double get navbarHeight => kBottomNavigationBarHeight;

  bool get isPortrait => orientation == Orientation.portrait;

  bool get isLandscape => orientation == Orientation.landscape;

  bool get isSmallPhone => shortestSide <= 360;

  bool get isMediumPhone => shortestSide > 360 && shortestSide <= 480;

  bool get isLargePhone => shortestSide > 480 && shortestSide <= _phoneBreakpoint;

  bool get isPhone => shortestSide <= _phoneBreakpoint;

  bool get isSmallTablet => shortestSide > 768 && shortestSide <= 1024;

  bool get isLargeTablet => shortestSide > 1024 && shortestSide <= 1366;

  bool get isTablet => shortestSide > _phoneBreakpoint && shortestSide <= _tabletBreakpoint;

  bool get isDesktop => width > _tabletBreakpoint;

  bool get showNavbar => isPhone;

  bool get showSidebar => isTablet;

  bool get showExpandedSidebar => isDesktop;

  T? responsiveValue<T>({
    T? mobile,
    T? tablet,
    double tabletBreakpoint = _phoneBreakpoint,
    T? desktop,
    double desktopBreakpoint = _tabletBreakpoint,
  }) {
    var deviceWidth = shortestSide;
    if (MyPlatform.isDesktop) {
      deviceWidth = width;
    }
    if (deviceWidth >= tabletBreakpoint && desktop != null) return desktop;
    if (deviceWidth >= desktopBreakpoint && tablet != null) return tablet;
    return mobile;
  }
}
