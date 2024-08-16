part of '../awesome_extensions.dart';

extension PaddingX on Widget {
  Padding paddingAll(double value, {Key? key}) => Padding(
        key: key,
        padding: EdgeInsets.all(value),
        child: this,
      );

  Padding paddingFromViewPadding(
    ViewPadding padding,
    double devicePixelRatio, {
    Key? key,
  }) =>
      Padding(
        key: key,
        padding: EdgeInsets.fromViewPadding(padding, devicePixelRatio),
        child: this,
      );

  Padding paddingLTRB(
    double left,
    double top,
    double right,
    double bottom, {
    Key? key,
  }) =>
      Padding(
        key: key,
        padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        child: this,
      );

  Padding paddingSTEB(
    double start,
    double top,
    double end,
    double bottom, {
    Key? key,
  }) =>
      Padding(
        key: key,
        padding: EdgeInsetsDirectional.fromSTEB(start, top, end, bottom),
        child: this,
      );

  Padding paddingOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
    Key? key,
  }) =>
      Padding(
        key: key,
        padding:
            EdgeInsets.only(top: top, left: left, bottom: bottom, right: right),
        child: this,
      );

  Padding paddingSymmetric(
          {double vertical = 0.0, double horizontal = 0.0, Key? key}) =>
      Padding(
        key: key,
        padding: EdgeInsets.symmetric(
          vertical: vertical,
          horizontal: horizontal,
        ),
        child: this,
      );
}
