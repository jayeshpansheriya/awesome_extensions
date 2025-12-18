import 'package:flutter/material.dart';

// ═══════════════════════════════════════════════════════════════════════════
// 🎨 AWESOME CONTAINER EXTENSIONS
// ═══════════════════════════════════════════════════════════════════════════
//
// Add decorations to Container widgets with simple method calls.
//
// ## 💡 Usage Examples
//
// ```dart
// // Round corners
// Container(width: 100, height: 100)
//   .withRoundCorners(backgroundColor: Colors.blue, radius: 16)
//
// // Shadow effect
// Container(width: 100, height: 100, color: Colors.white)
//   .withShadow(shadowColor: Colors.black26, blurRadius: 10)
// ```
//
// ## ⚠️ Important Note
// These extensions wrap the Container in another Container with decoration.
// If your Container already has a color, move it to the backgroundColor parameter.
//
// ═══════════════════════════════════════════════════════════════════════════

/// 🎨 **Awesome Container Extension** on Container
///
/// Provides convenient methods to add decorations to Container widgets.
extension AwesomeContainerExtension on Container {
  /// Adds rounded corners to this Container
  ///
  /// Wraps the Container in another Container with a BoxDecoration that
  /// has rounded corners.
  ///
  /// **Important**: If your Container already has a color, remove it and
  /// use the [backgroundColor] parameter instead to avoid conflicts.
  ///
  /// Parameters:
  /// - [backgroundColor]: The background color for the rounded container
  /// - [radius]: The corner radius (default: 25)
  ///
  /// Example:
  /// ```dart
  /// // ❌ Wrong - Container already has color
  /// Container(
  ///   color: Colors.blue,
  ///   child: Text('Hello'),
  /// ).withRoundCorners(backgroundColor: Colors.blue, radius: 16)
  ///
  /// // ✅ Correct - Color moved to backgroundColor parameter
  /// Container(
  ///   child: Text('Hello'),
  /// ).withRoundCorners(backgroundColor: Colors.blue, radius: 16)
  /// ```
  Container withRoundCorners({
    required Color backgroundColor,
    double? radius,
  }) =>
      Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 25)),
        ),
        child: this,
      );

  /// Adds a shadow effect to this Container
  ///
  /// Wraps the Container in another Container with a BoxDecoration that
  /// includes a box shadow.
  ///
  /// Parameters:
  /// - [shadowColor]: The color of the shadow (default: Colors.grey)
  /// - [blurRadius]: How blurred the shadow is (default: 20.0)
  /// - [spreadRadius]: How far the shadow spreads (default: 1.0)
  /// - [offset]: The offset of the shadow (default: Offset(10.0, 10.0))
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   width: 100,
  ///   height: 100,
  ///   color: Colors.white,
  ///   child: Text('Card'),
  /// ).withShadow(
  ///   shadowColor: Colors.black26,
  ///   blurRadius: 15,
  ///   spreadRadius: 2,
  ///   offset: Offset(0, 4),
  /// )
  /// ```
  Container withShadow({
    Color shadowColor = Colors.grey,
    double blurRadius = 20.0,
    double spreadRadius = 1.0,
    Offset offset = const Offset(10.0, 10.0),
  }) =>
      Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              blurRadius: blurRadius,
              spreadRadius: spreadRadius,
              offset: offset,
            ),
          ],
        ),
        child: this,
      );
}
