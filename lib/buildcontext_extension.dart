part of 'awesome_extensions.dart';

extension ExtBuildContext on BuildContext {
  /// performs a simple [Theme.of(context)] action and returns given [result]
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// performs a simple [Theme.of(context).size] action and returns given [height or width]
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;

  ///  just call this [canPop()] method and it would return true if this route can be popped and false if it’s not possible.
  bool canBack() => Navigator.canPop(this);

  /// performs a simple [Navigator.pop] action and returns given [result]
  void back() => Navigator.pop(this);

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
