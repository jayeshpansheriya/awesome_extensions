part of 'awesome_extensions.dart';

extension ExtBuildContext on BuildContext {
  ThemeData get theme => Theme.of(this);
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;

  /// performs a simple [Navigator.pop] action and returns given [result]
  void navigateBack() => Navigator.pop(this);

  /// performs a simple [Navigator.push] action with given [route]
  void navigateTo(Widget screen) {
    Navigator.of(this).push(MaterialPageRoute<Widget>(builder: (_) => screen));
  }

  /// performs a simple [Navigator.pushReplacement] action with given [route]
  void replaceWith(Widget screen) {
    Navigator.of(this).pushReplacement(MaterialPageRoute<Widget>(builder: (_) {
      return screen;
    }));
  }
}
