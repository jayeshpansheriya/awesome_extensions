part of 'awesome_extensions.dart';

extension NavigatorExt on BuildContext {
  ///  just call this [canPop()] method and it would return true if this route can be popped and false if it’s not possible.
  bool canBack() => Navigator.canPop(this);

  /// performs a simple [Navigator.pop] action and returns given [result]
  void back({result}) => Navigator.pop(this, result);

  /// performs a simple [Navigator.push] action with given [route]
  void to(Widget screen) {
    Navigator.of(this).push(MaterialPageRoute<Widget>(builder: (_) => screen));
  }

  /// performs a simple [Navigator.pushReplacement] action with given [route]
  void replaceWith(Widget screen) {
    Navigator.of(this).pushReplacement(MaterialPageRoute<Widget>(builder: (_) {
      return screen;
    }));
  }

  /// perform push and remove route
  void toAndRemoveUntil(Widget screen, {bool routes = false}) {
    Navigator.of(this).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => screen),
        (Route<dynamic> route) => routes);
  }

  /// perform push with routeName
  void toNamed(String screenName) {
    Navigator.of(this).pushNamed(screenName);
  }

  /// perform replash with routeName
  void replaceWithNamed(String screenName) {
    Navigator.of(this).pushReplacementNamed(screenName);
  }

  /// perform replash with routeName
  void backUntilNamed(String screenName) {
    Navigator.of(this).popUntil(ModalRoute.withName(screenName));
  }

  /// perform push and remove route with name
  void toAndRemoveUntilName(String screenName, {bool routes = false}) {
    Navigator.of(this).popUntil(ModalRoute.withName(screenName));
    Navigator.pushNamedAndRemoveUntil(
        this, screenName, (Route<dynamic> route) => routes);
  }
}

extension ThemeExt on BuildContext {
  /// performs a simple [Theme.of(context)] action and returns given [result]
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// performs a simple [Theme.of(context).primaryTextTheme] action and returns given [primaryTextTheme]
  TextTheme get primaryTextTheme => Theme.of(this).primaryTextTheme;

  /// performs a simple [Theme.of(context).accentTextTheme] action and returns given [accentTextTheme]
  TextTheme get accentTextTheme => Theme.of(this).accentTextTheme;

  /// performs a simple [Theme.of(context).bottomAppBarTheme] action and returns given [bottomAppBarTheme]
  BottomAppBarTheme get bottomAppBarTheme => Theme.of(this).bottomAppBarTheme;

  /// performs a simple [Theme.of(context).bottomSheetTheme] action and returns given [bottomSheetTheme]
  BottomSheetThemeData get bottomSheetTheme => Theme.of(this).bottomSheetTheme;

  /// performs a simple [Theme.of(context).backgroundColor] action and returns given [backgroundColor]
  Color get backgroundColor => Theme.of(this).backgroundColor;

  /// performs a simple [Theme.of(context).primaryColor] action and returns given [primaryColor]
  Color get primaryColor => Theme.of(this).primaryColor;

  /// performs a simple [Theme.of(context).buttonColor] action and returns given [buttonColor]
  Color get buttonColor => Theme.of(this).buttonColor;

  /// performs a simple [Theme.of(context).scaffoldBackgroundColor] action and returns given [scaffoldBackgroundColor]
  Color get scaffoldBackgroundColor => Theme.of(this).scaffoldBackgroundColor;

  /// performs a simple [Theme.of(context).appBarTheme] action and returns given [appBarTheme]
  AppBarTheme get appBarTheme => Theme.of(this).appBarTheme;

  /// performs a simple [textTheme.headline1] action and returns given [headline1]
  TextStyle? get headline1 => textTheme.headline1;

  /// performs a simple [textTheme.headline2] action and returns given [headline2]
  TextStyle? get headline2 => textTheme.headline2;

  /// performs a simple [textTheme.headline3] action and returns given [headline3]
  TextStyle? get headline3 => textTheme.headline3;

  /// performs a simple [textTheme.headline4] action and returns given [headline4]
  TextStyle? get headline4 => textTheme.headline4;

  /// performs a simple [textTheme.headline5] action and returns given [headline5]
  TextStyle? get headline5 => textTheme.headline5;

  /// performs a simple [textTheme.headline6] action and returns given [headline6]
  TextStyle? get headline6 => textTheme.headline6;

  /// performs a simple [textTheme.subtitle1] action and returns given [subtitle1]
  TextStyle? get subtitle1 => textTheme.subtitle1;

  /// performs a simple [textTheme.bodyText1] action and returns given [bodyText1]
  TextStyle? get bodyText1 => textTheme.bodyText1;

  /// performs a simple [textTheme.bodyText2] action and returns given [bodyText2]
  TextStyle? get bodyText2 => textTheme.bodyText2;

  /// performs a simple [textTheme.caption] action and returns given [caption]
  TextStyle? get caption => textTheme.caption;

  /// performs a simple [textTheme.button] action and returns given [button]
  TextStyle? get button => textTheme.button;

  /// performs a simple [textTheme.subtitle2] action and returns given [subtitle2]
  TextStyle? get subtitle2 => textTheme.subtitle2;

  /// performs a simple [textTheme.overline] action and returns given [overline]
  TextStyle? get overline => textTheme.overline;
}

extension MediaQueryExt on BuildContext {
  /// The same of [MediaQuery.of(context).size]
  Size get mediaQuerySize => MediaQuery.of(this).size;

  /// The same of [MediaQuery.of(context).size.height]
  /// Note: updates when you rezise your screen (like on a browser or
  /// desktop window)
  /// performs a simple [Theme.of(context).size] action and returns given [height or width]
  double get height => MediaQuery.of(this).size.height;

  /// The same of [MediaQuery.of(context).size.width]
  /// Note: updates when you rezise your screen (like on a browser or
  /// desktop window)
  double get width => MediaQuery.of(this).size.width;

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

  /// similar to [MediaQuery.of(this).textScaleFactor]
  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;

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
}
