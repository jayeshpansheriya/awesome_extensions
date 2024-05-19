part of '../awesome_extensions.dart';

extension WidgetSliver on Widget {
  Widget get sliver {
    return SliverToBoxAdapter(
      child: this,
    );
  }
}
