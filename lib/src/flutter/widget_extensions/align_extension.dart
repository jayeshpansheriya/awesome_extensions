import 'package:flutter/material.dart';

// ═══════════════════════════════════════════════════════════════════════════
// 🎨 AWESOME ALIGN EXTENSIONS
// ═══════════════════════════════════════════════════════════════════════════
//
// Align widgets within their parent with simple, readable method calls.
//
// ## 💡 Usage Examples
//
// ```dart
// Text('Top Left').alignAtTopLeft()
// Icon(Icons.star).alignAtCenter()
// Container(width: 50, height: 50).alignAtBottomRight()
//
// // Custom alignment
// Text('Custom').alignXY(0.5, -0.5)  // Between center and top-right
// ```
//
// ## 📐 Alignment Coordinates
// - X axis: -1.0 (left) to 1.0 (right)
// - Y axis: -1.0 (top) to 1.0 (bottom)
// - (0, 0) is center
//
// ═══════════════════════════════════════════════════════════════════════════

/// 🎨 **Awesome Align Extension** on Widget
///
/// Provides convenient methods to align widgets within their parent container.
extension AwesomeAlignExtension on Widget {
  /// Aligns this widget at the bottom center
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   height: 200,
  ///   child: Text('Bottom').alignAtBottomCenter(),
  /// )
  /// ```
  Align alignAtBottomCenter({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) => Align(
    key: key,
    alignment: Alignment.bottomCenter,
    heightFactor: heightFactor,
    widthFactor: widthFactor,
    child: this,
  );

  /// Aligns this widget at the bottom left
  ///
  /// Example:
  /// ```dart
  /// FloatingActionButton().alignAtBottomLeft()
  /// ```
  Align alignAtBottomLeft({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) => Align(
    key: key,
    alignment: Alignment.bottomLeft,
    heightFactor: heightFactor,
    widthFactor: widthFactor,
    child: this,
  );

  /// Aligns this widget at the bottom right
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.add).alignAtBottomRight()
  /// ```
  Align alignAtBottomRight({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) => Align(
    key: key,
    alignment: Alignment.bottomRight,
    heightFactor: heightFactor,
    widthFactor: widthFactor,
    child: this,
  );

  /// Aligns this widget at the center
  ///
  /// Example:
  /// ```dart
  /// Text('Centered').alignAtCenter()
  /// ```
  Align alignAtCenter({Key? key, double? heightFactor, double? widthFactor}) =>
      Align(
        key: key,
        alignment: Alignment.center,
        heightFactor: heightFactor,
        widthFactor: widthFactor,
        child: this,
      );

  /// Aligns this widget at the center left
  ///
  /// Example:
  /// ```dart
  /// Text('Left aligned').alignAtCenterLeft()
  /// ```
  Align alignAtCenterLeft({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) => Align(
    key: key,
    alignment: Alignment.centerLeft,
    heightFactor: heightFactor,
    widthFactor: widthFactor,
    child: this,
  );

  /// Aligns this widget at the center right
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.arrow_forward).alignAtCenterRight()
  /// ```
  Align alignAtCenterRight({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) => Align(
    key: key,
    alignment: Alignment.centerRight,
    heightFactor: heightFactor,
    widthFactor: widthFactor,
    child: this,
  );

  /// Aligns this widget using linear interpolation between two alignments
  ///
  /// Useful for animations or custom positioning between two alignment points.
  ///
  /// Parameters:
  /// - [a]: Start alignment
  /// - [b]: End alignment
  /// - [t]: Interpolation factor (0.0 = a, 1.0 = b, 0.5 = halfway between)
  ///
  /// Example:
  /// ```dart
  /// // Halfway between topLeft and bottomRight
  /// Text('Diagonal').alignAtLERP(
  ///   Alignment.topLeft,
  ///   Alignment.bottomRight,
  ///   0.5,
  /// )
  /// ```
  Align alignAtLERP(
    Alignment a,
    Alignment b,
    double t, {
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) => Align(
    key: key,
    alignment: Alignment.lerp(a, b, t)!,
    heightFactor: heightFactor,
    widthFactor: widthFactor,
    child: this,
  );

  /// Aligns this widget at the top center
  ///
  /// Example:
  /// ```dart
  /// AppBar().alignAtTopCenter()
  /// ```
  Align alignAtTopCenter({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) => Align(
    key: key,
    alignment: Alignment.topCenter,
    heightFactor: heightFactor,
    widthFactor: widthFactor,
    child: this,
  );

  /// Aligns this widget at the top left
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.menu).alignAtTopLeft()
  /// ```
  Align alignAtTopLeft({Key? key, double? heightFactor, double? widthFactor}) =>
      Align(
        key: key,
        alignment: Alignment.topLeft,
        heightFactor: heightFactor,
        widthFactor: widthFactor,
        child: this,
      );

  /// Aligns this widget at the top right
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.close).alignAtTopRight()
  /// ```
  Align alignAtTopRight({
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) => Align(
    key: key,
    alignment: Alignment.topRight,
    heightFactor: heightFactor,
    widthFactor: widthFactor,
    child: this,
  );

  /// Aligns this widget at custom X and Y coordinates
  ///
  /// The coordinate system:
  /// - X: -1.0 (left) to 1.0 (right)
  /// - Y: -1.0 (top) to 1.0 (bottom)
  /// - (0, 0) is center
  ///
  /// Example:
  /// ```dart
  /// // Slightly right and up from center
  /// Text('Custom').alignXY(0.3, -0.2)
  ///
  /// // Top-left corner
  /// Icon(Icons.star).alignXY(-1.0, -1.0)
  /// ```
  Align alignXY(
    double x,
    double y, {
    Key? key,
    double? heightFactor,
    double? widthFactor,
  }) => Align(
    key: key,
    alignment: Alignment(x, y),
    heightFactor: heightFactor,
    widthFactor: widthFactor,
    child: this,
  );
}
