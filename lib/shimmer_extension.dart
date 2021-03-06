part of 'awesome_extensions.dart';

///
/// Extension Method for the [Shimmer Effect] Widget
///
extension ShimmerEffect on Widget {
  Widget applyShimmer(
      {bool enable = true, Color baseColor, Color highlightColor}) {
    if (enable) {
      return Shimmer.fromColors(
        baseColor: baseColor ?? Colors.grey[300],
        highlightColor: highlightColor ?? Colors.grey[100],
        enabled: enable,
        child: this,
      );
    } else {
      return this;
    }
  }
}
