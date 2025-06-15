import 'package:flutter/material.dart';

extension WidgetsExtension on Widget {
  Widget withTooltip(String message,
          {Decoration? decoration,
          BoxConstraints? constraints,
          bool? preferBelow,
          EdgeInsetsGeometry? padding,
          TextStyle? textStyle,
          Duration? waitDuration,
          EdgeInsetsGeometry? margin}) =>
      Tooltip(
        message: message,
        decoration: decoration,
        constraints: constraints,
        padding: padding,
        preferBelow: preferBelow,
        textStyle: textStyle,
        waitDuration: waitDuration,
        margin: margin,
        child: this,
      );
}
