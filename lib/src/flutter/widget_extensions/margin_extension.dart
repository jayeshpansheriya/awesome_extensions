import 'package:flutter/widgets.dart';

extension MarginExtension on Widget {
  /// Adds margin on all sides of widget
  Widget marginAll(double value) =>
      Container(margin: EdgeInsets.all(value), child: this);

  /// Adds symmetric horizontal and vertical margins
  Widget marginSymmetric({double horizontal = 0.0, double vertical = 0.0}) =>
      Container(
        margin: EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
        child: this,
      );

  /// Adds margin on specific sides
  Widget marginOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) => Container(
    margin: EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
    child: this,
  );

  /// Adds directional margin (respects LTR and RTL text direction)
  Widget marginDirectional({
    double start = 0.0,
    double top = 0.0,
    double end = 0.0,
    double bottom = 0.0,
  }) => Container(
    margin: EdgeInsetsDirectional.only(
      start: start,
      top: top,
      end: end,
      bottom: bottom,
    ),
    child: this,
  );
}
