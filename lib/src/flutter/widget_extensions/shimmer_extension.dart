import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';

// ═══════════════════════════════════════════════════════════════════════════
// 🎨 AWESOME SHIMMER EXTENSION
// ═══════════════════════════════════════════════════════════════════════════
//
// Add shimmer loading effects to any widget with a simple method call.
//
// ## 💡 Usage Examples
//
// ```dart
// // Simple shimmer
// Container(height: 100, width: 200).applyShimmer()
//
// // Custom colors
// Text('Loading...').applyShimmer(
//   baseColor: Colors.grey[300],
//   highlightColor: Colors.grey[100],
// )
//
// // Conditional shimmer
// UserAvatar().applyShimmer(enable: isLoading)
// ```
//
// ═══════════════════════════════════════════════════════════════════════════

/// 🎨 **Awesome Shimmer Extension** on Widget
///
/// Provides a convenient way to add shimmer loading effects to widgets.
extension AwesomeShimmerExtension on Widget {
  /// Applies a shimmer loading effect to this widget
  ///
  /// The shimmer effect creates an animated gradient that moves across
  /// the widget, commonly used for skeleton loading screens.
  ///
  /// Parameters:
  /// - [enable]: Whether to apply the shimmer effect (default: true)
  /// - [baseColor]: The base color of the shimmer (default: Colors.grey[300])
  /// - [highlightColor]: The highlight color of the shimmer (default: Colors.grey[100])
  ///
  /// Example:
  /// ```dart
  /// // Loading skeleton
  /// Column(
  ///   children: [
  ///     Container(height: 20, width: 200).applyShimmer(),
  ///     SizedBox(height: 8),
  ///     Container(height: 20, width: 150).applyShimmer(),
  ///   ],
  /// )
  ///
  /// // Conditional shimmer based on loading state
  /// UserProfile(user: user).applyShimmer(enable: isLoading)
  ///
  /// // Custom colors
  /// Card(
  ///   child: ListTile(title: Text('Loading')),
  /// ).applyShimmer(
  ///   baseColor: Colors.blue[100],
  ///   highlightColor: Colors.blue[50],
  /// )
  /// ```
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
