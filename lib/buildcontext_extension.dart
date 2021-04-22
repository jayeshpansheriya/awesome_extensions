part of 'awesome_extensions.dart';

extension ExtBuildContext on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;

  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;

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
}
