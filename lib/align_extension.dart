part of 'awesome_extensions.dart';

extension AlignExtensions on Widget {
  Align alignAtBottomCenter({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      Align(
        key: key,
        child: this,
        alignment: Alignment.bottomCenter,
        heightFactor: heightFactor,
        widthFactor: widthFactor,
      );

  Align alignAtTopLeft({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      Align(
        key: key,
        child: this,
        alignment: Alignment.topLeft,
        heightFactor: heightFactor,
        widthFactor: widthFactor,
      );

  Align alignAtBottomLeft({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      Align(
        key: key,
        child: this,
        alignment: Alignment.bottomLeft,
        heightFactor: heightFactor,
        widthFactor: widthFactor,
      );

  Align alignAtBottomRight({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      Align(
        key: key,
        child: this,
        alignment: Alignment.bottomRight,
        heightFactor: heightFactor,
        widthFactor: widthFactor,
      );

  Align alignAtCenterLeft({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      Align(
        key: key,
        child: this,
        alignment: Alignment.centerLeft,
        heightFactor: heightFactor,
        widthFactor: widthFactor,
      );

  Align alignAtCenter({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      Align(
        key: key,
        child: this,
        alignment: Alignment.center,
        heightFactor: heightFactor,
        widthFactor: widthFactor,
      );

  Align alignAtCenterRight({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      Align(
        key: key,
        child: this,
        alignment: Alignment.centerRight,
        heightFactor: heightFactor,
        widthFactor: widthFactor,
      );

  Align alignAtLERP(
    Alignment a,
    Alignment b,
    double t, {
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      Align(
        key: key,
        child: this,
        alignment: Alignment.lerp(a, b, t)!,
        heightFactor: heightFactor,
        widthFactor: widthFactor,
      );

  Align alignXY(
    double x,
    double y, {
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      Align(
        key: key,
        child: this,
        alignment: Alignment(x, y),
        heightFactor: heightFactor,
        widthFactor: widthFactor,
      );

  Align alignAtTopCenter({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      Align(
        key: key,
        child: this,
        alignment: Alignment.topCenter,
        heightFactor: heightFactor,
        widthFactor: widthFactor,
      );

  Align alignAtTopRight({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) =>
      Align(
        key: key,
        child: this,
        alignment: Alignment.topRight,
        heightFactor: heightFactor,
        widthFactor: widthFactor,
      );
}
