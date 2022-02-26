part of '../awesome_extensions.dart';

extension NavigatorExt on BuildContext {
  ///  just call this [canPop()] method and it would return true if this route can be popped and false if it’s not possible.
  bool canBack() => Navigator.canPop(this);

  /// performs a simple [Navigator.pop] action and returns given [result]
  void back<T>({result}) => Navigator.pop(this, result);

  /// performs a simple [Navigator.push] action with given [route]
  Future<dynamic> to(Widget screen) async {
    var result = await Navigator.of(this)
        .push(MaterialPageRoute<Widget>(builder: (_) => screen));
    return result;
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
  void toNamed(
    String screenName, {
    Object? arguments,
  }) {
    Navigator.of(this).pushNamed(screenName, arguments: arguments);
  }

  /// perform replash with routeName
  void replaceWithNamed(
    String screenName, {
    Object? arguments,
  }) {
    Navigator.of(this).pushReplacementNamed(screenName, arguments: arguments);
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
