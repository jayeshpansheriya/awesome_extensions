part of '../awesome_extensions.dart';

extension WidgetCommonExtension on Widget {
  Widget? showIf(bool condition) {
    if (condition) {
      return this;
    }
    return null;
  }
}
