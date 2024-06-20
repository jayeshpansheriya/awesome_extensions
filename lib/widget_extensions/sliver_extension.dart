part of '../awesome_extensions.dart';

extension WidgetSliver on Widget {
  Widget toSliver() {
    return SliverToBoxAdapter(
      child: this,
    );
  }
}
