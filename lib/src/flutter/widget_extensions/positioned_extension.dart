import 'package:flutter/material.dart';

// ═══════════════════════════════════════════════════════════════════════════
// 🎨 AWESOME POSITIONED EXTENSIONS
// ═══════════════════════════════════════════════════════════════════════════
//
// Position widgets within a Stack with simple method calls.
//
// ## 💡 Usage Examples
//
// ```dart
// Stack(
//   children: [
//     Container(color: Colors.blue).positionTop(top: 0),
//     Text('Bottom').positionBottom(bottom: 16),
//     Icon(Icons.close).positionLRTB(top: 8, right: 8, left: null, bottom: null),
//   ],
// )
// ```
//
// ═══════════════════════════════════════════════════════════════════════════

/// 🎨 **Awesome Positioned Extension** on Widget
///
/// Provides convenient methods to position widgets within a Stack.
extension AwesomePositionedExtension on Widget {
  /// Positions this widget at a specific distance from the bottom
  ///
  /// Example:
  /// ```dart
  /// Stack(
  ///   children: [
  ///     Container(color: Colors.blue),
  ///     FloatingActionButton().positionBottom(bottom: 16, width: 56, height: 56),
  ///   ],
  /// )
  /// ```
  Positioned positionBottom({
    Key? key,
    required double bottom,
    double? width,
    double? height,
  }) =>
      Positioned(
        key: key,
        bottom: bottom,
        width: width,
        height: height,
        child: this,
      );

  /// Positions this widget with specific left and right distances
  ///
  /// Example:
  /// ```dart
  /// Stack(
  ///   children: [
  ///     Container(color: Colors.blue),
  ///     Text('Stretched').positionLR(left: 16, right: 16),
  ///   ],
  /// )
  /// ```
  Positioned positionLR({
    Key? key,
    required double left,
    required double right,
    double? width,
    double? height,
  }) =>
      Positioned(
        key: key,
        left: left,
        right: right,
        width: width,
        height: height,
        child: this,
      );

  /// Positions this widget with all four edges specified (Left, Right, Top, Bottom)
  ///
  /// Example:
  /// ```dart
  /// Stack(
  ///   children: [
  ///     Container(color: Colors.blue),
  ///     Container(color: Colors.red.withOpacity(0.5))
  ///       .positionLRTB(top: 20, bottom: 20, left: 20, right: 20),
  ///   ],
  /// )
  /// ```
  Positioned positionLRTB({
    Key? key,
    required double top,
    required double bottom,
    required double left,
    required double right,
    double? width,
    double? height,
  }) =>
      Positioned(
        key: key,
        top: top,
        bottom: bottom,
        left: left,
        right: right,
        width: width,
        height: height,
        child: this,
      );

  /// Positions this widget with specific top and bottom distances
  ///
  /// Example:
  /// ```dart
  /// Stack(
  ///   children: [
  ///     Container(color: Colors.blue),
  ///     VerticalDivider().positionTB(top: 16, bottom: 16),
  ///   ],
  /// )
  /// ```
  Positioned positionTB({
    Key? key,
    required double top,
    required double bottom,
    double? width,
    double? height,
  }) =>
      Positioned(
        key: key,
        top: top,
        bottom: bottom,
        width: width,
        height: height,
        child: this,
      );

  /// Positions this widget at a specific distance from the top
  ///
  /// Example:
  /// ```dart
  /// Stack(
  ///   children: [
  ///     Container(color: Colors.blue),
  ///     AppBar().positionTop(top: 0),
  ///   ],
  /// )
  /// ```
  Positioned positionTop({
    Key? key,
    required double top,
    double? width,
    double? height,
  }) =>
      Positioned(key: key, top: top, width: width, height: height, child: this);
}
