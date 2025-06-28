import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';

extension ShimmerEffect on Widget {
  Widget applyShimmer({
    bool enable = true,
    Color? baseColor,
    Color? highlightColor,
  }) {
    if (enable) {
      return Shimmer.fromColors(
        baseColor: baseColor ?? Colors.grey.shade300,
        highlightColor: highlightColor ?? Colors.grey.shade100,
        enabled: enable,
        child: this,
      );
    } else {
      return this;
    }
  }
}
