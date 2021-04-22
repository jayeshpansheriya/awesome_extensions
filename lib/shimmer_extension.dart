part of 'awesome_extensions.dart';

extension ShimmerEffect on Widget {
  Widget applyShimmer(
      {bool enable = true,
      Color baseColor = Colors.grey,
      Color highlightColor = Colors.grey}) {
    if (enable) {
      return Shimmer.fromColors(
        baseColor: baseColor,
        highlightColor: highlightColor,
        enabled: enable,
        child: this,
      );
    } else {
      return this;
    }
  }
}
