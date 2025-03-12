import 'package:flutter/widgets.dart';

extension WidgetSliver on Widget {
  Widget get sliver {
    return SliverToBoxAdapter(
      child: this,
    );
  }
}
