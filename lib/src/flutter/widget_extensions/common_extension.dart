import 'package:flutter/material.dart';

extension WidgetCommonExtension on Widget {
  Widget? showIf(bool condition) {
    if (condition) {
      return this;
    }
    return null;
  }
}
