part of '../awesome_extensions.dart';

extension SliverExt on Widget {
  Widget toSliver({Key? key}) {
    return SliverToBoxAdapter(
      key: key,
      child: this,
    );
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
