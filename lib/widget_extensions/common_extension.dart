part of '../awesome_extensions.dart';

extension WidgetCommonExtension on Widget {
  Widget? showIf(bool condition) {
    if (condition) {
      return this;
    }
    return null;
  }

  bool isSliver({bool throwOnError = false}) {
    final isSliverWidget =
        this is SliverMultiBoxAdaptorWidget || this is SingleChildRenderObjectWidget || this is SliverToBoxAdapter;

    if (!isSliverWidget && throwOnError) {
      throw ArgumentError('The provided widget is not a Sliver.');
    }

    return isSliverWidget;
  }
}
