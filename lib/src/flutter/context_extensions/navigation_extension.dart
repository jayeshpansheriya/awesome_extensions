import 'package:flutter/material.dart';

extension NavigatorExt on BuildContext {
  Object? get routeArguments => ModalRoute.of(this)?.settings.arguments;

  Object? get routeName => ModalRoute.of(this)?.settings.name;

  Object? get routeSettings => ModalRoute.of(this)?.settings;

  ///  just call this [canPop()] method and it would return true if this route can be popped and false if it’s not possible.
  bool canPop() => Navigator.canPop(this);

  /// performs a simple [Navigator.pop] action and returns given [result]
  void pop<T extends Object?>([T? result]) => Navigator.pop(
        this,
        result,
      );

  /// perform replash with routeName
  void popUntil(
    String screenName, {
    bool rootNavigator = false,
  }) =>
      Navigator.of(
        this,
        rootNavigator: rootNavigator,
      ).popUntil(ModalRoute.withName(screenName));

  /// performs a simple [Navigator.push] action with given [route]
  Future<T?> push<T extends Object?>(
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

  /// perform push and remove route
  Future<T?> pushAndRemoveUntil<T extends Object?>(
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
        (Route<dynamic> route) => routes,
      );

  /// perform push with routeName
  Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
    bool rootNavigator = false,
  }) async =>
      await Navigator.of(
        this,
        rootNavigator: rootNavigator,
      ).pushNamed(
        routeName,
        arguments: arguments,
      );

  /// performs a simple [Navigator.pushReplacement] action with given [route]
  Future<T> pushReplacement<T extends Object?>(
    Widget screen, {
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
    bool rootNavigator = false,
    dynamic result,
  }) async =>
      await Navigator.of(
        this,
        rootNavigator: rootNavigator,
      ).pushReplacement(
        MaterialPageRoute(
          builder: (_) => screen,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        ),
        result: result,
      );

  /// perform replash with routeName
  Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
    bool rootNavigator = false,
  }) =>
      Navigator.of(
        this,
        rootNavigator: rootNavigator,
      ).pushReplacementNamed(
        routeName,
        result: result,
        arguments: arguments,
      );

  Object? get arguments => ModalRoute.of(this)?.settings.arguments;
}
