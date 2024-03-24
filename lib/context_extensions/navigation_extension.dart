part of '../awesome_extensions.dart';

extension NavigatorExt on BuildContext {
  ///  just call this [canPop()] method and it would return true if this route can be popped and false if it’s not possible.
  bool canPop() => Navigator.canPop(this);

  /// performs a simple [Navigator.pop] action and returns given [result]
  void pop<T>({result}) => Navigator.pop(this, result);

  /// performs a simple [Navigator.push] action with given [route]
  Future<dynamic> push(
    Widget screen, {
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
    bool rootNavigator = false,
  }) async =>
      await Navigator.of(
        this,
        rootNavigator: rootNavigator,
      ).push(MaterialPageRoute(
        builder: (_) => screen,
        settings: settings,
        maintainState: maintainState,
        fullscreenDialog: fullscreenDialog,
      ));

  /// performs a simple [Navigator.pushReplacement] action with given [route]
  Future<dynamic> pushReplacement(
    Widget screen, {
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
    bool rootNavigator = false,
  }) async =>
      await Navigator.of(
        this,
        rootNavigator: rootNavigator,
      ).pushReplacement(MaterialPageRoute(
        builder: (_) => screen,
        settings: settings,
        maintainState: maintainState,
        fullscreenDialog: fullscreenDialog,
      ));

  /// perform push and remove route
  Future<dynamic> pushAndRemoveUntil(
    Widget screen, {
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
    bool routes = false,
    bool rootNavigator = false,
  }) async =>
      await Navigator.of(
        this,
        rootNavigator: rootNavigator,
      ).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (_) => screen,
            settings: settings,
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog,
          ),
          (Route<dynamic> route) => routes);

  /// perform push with routeName
  Future<dynamic> pushNamed(
    String screenName, {
    Object? arguments,
    bool rootNavigator = false,
  }) async =>
      await Navigator.of(
        this,
        rootNavigator: rootNavigator,
      ).pushNamed(screenName, arguments: arguments);

  /// perform replash with routeName
  Future<dynamic> pushReplacementNamed(
    String screenName, {
    Object? arguments,
    bool rootNavigator = false,
  }) =>
      Navigator.of(
        this,
        rootNavigator: rootNavigator,
      ).pushReplacementNamed(screenName, arguments: arguments);

  /// perform replash with routeName
  void popUntil(
    String screenName, {
    bool rootNavigator = false,
  }) =>
      Navigator.of(
        this,
        rootNavigator: rootNavigator,
      ).popUntil(ModalRoute.withName(screenName));

  Object? get routeSettings => ModalRoute.of(this)?.settings;
  Object? get routeName => ModalRoute.of(this)?.settings.name;
  Object? get routeArguments => ModalRoute.of(this)?.settings.arguments;
}
