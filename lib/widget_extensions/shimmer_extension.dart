part of '../awesome_extensions.dart';

extension ShimmerEffectExt on Widget {
  Widget shimmer({
    Key? key,
    bool enable = true,
    Color? baseColor,
    Color? highlightColor,
    Duration period = const Duration(milliseconds: 1500),
    ShimmerDirection direction = ShimmerDirection.ltr,
    int loop = 0,
  }) {
    return enable
        ? Shimmer.fromColors(
            key: key,
            enabled: enable,
            period: period,
            direction: direction,
            loop: loop,
            baseColor: baseColor ?? Colors.grey.shade300,
            highlightColor: highlightColor ?? Colors.grey.shade100,
            child: this,
          )
        : this;
  }
}
