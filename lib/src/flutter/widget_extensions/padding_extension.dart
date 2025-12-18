import 'dart:ui';

import 'package:flutter/material.dart';

// ═══════════════════════════════════════════════════════════════════════════
// 🎨 AWESOME PADDING EXTENSIONS
// ═══════════════════════════════════════════════════════════════════════════
//
// Add padding to any widget with simple, readable method calls.
//
// ## 💡 Usage Examples
//
// ```dart
// // All sides
// Text('Hello').paddingAll(16)
//
// // Symmetric
// Container().paddingSymmetric(horizontal: 20, vertical: 10)
//
// // Specific sides
// Text('Title').paddingOnly(left: 16, top: 8)
//
// // Directional (RTL-aware)
// Text('Content').paddingStart(16)
// ```
//
// ═══════════════════════════════════════════════════════════════════════════

/// 🎨 **Awesome Padding Extension** on Widget
///
/// Provides convenient methods to add padding to any widget.
extension AwesomePaddingExtension on Widget {
  /// Adds equal padding on all sides
  ///
  /// Example:
  /// ```dart
  /// Text('Padded').paddingAll(16)
  /// // Same as: Padding(padding: EdgeInsets.all(16), child: Text('Padded'))
  /// ```
  Padding paddingAll(double value, {Key? key}) =>
      Padding(key: key, padding: EdgeInsets.all(value), child: this);

  /// Creates padding from ViewPadding (used for system UI insets)
  ///
  /// Useful for handling safe areas and system UI overlays.
  ///
  /// Example:
  /// ```dart
  /// Widget build(BuildContext context) {
  ///   final viewPadding = MediaQuery.of(context).viewPadding;
  ///   final pixelRatio = MediaQuery.of(context).devicePixelRatio;
  ///   return content.paddingFromViewPadding(viewPadding, pixelRatio);
  /// }
  /// ```
  Padding paddingFromViewPadding(
    ViewPadding padding,
    double devicePixelRatio, {
    Key? key,
  }) => Padding(
    key: key,
    padding: EdgeInsets.fromViewPadding(padding, devicePixelRatio),
    child: this,
  );

  /// Adds padding with specific values for each side (Left, Top, Right, Bottom)
  ///
  /// Example:
  /// ```dart
  /// Text('Custom').paddingLTRB(16, 8, 16, 12)
  /// // Same as: Padding(padding: EdgeInsets.fromLTRB(16, 8, 16, 12), child: ...)
  /// ```
  Padding paddingLTRB(
    double left,
    double top,
    double right,
    double bottom, {
    Key? key,
  }) => Padding(
    key: key,
    padding: EdgeInsets.fromLTRB(left, top, right, bottom),
    child: this,
  );

  /// Adds padding only on specified sides
  ///
  /// All parameters default to 0.0, so you only specify the sides you need.
  ///
  /// Example:
  /// ```dart
  /// Text('Title').paddingOnly(left: 16, top: 8)
  /// Text('Subtitle').paddingOnly(bottom: 12)
  /// ```
  Padding paddingOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
    Key? key,
  }) => Padding(
    key: key,
    padding: EdgeInsets.only(
      top: top,
      left: left,
      bottom: bottom,
      right: right,
    ),
    child: this,
  );

  /// Adds symmetric padding (vertical and/or horizontal)
  ///
  /// Example:
  /// ```dart
  /// Text('Content').paddingSymmetric(horizontal: 20, vertical: 10)
  /// Container().paddingSymmetric(horizontal: 16)
  /// ```
  Padding paddingSymmetric({
    double vertical = 0.0,
    double horizontal = 0.0,
    Key? key,
  }) => Padding(
    key: key,
    padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
    child: this,
  );

  /// Adds horizontal padding (left and right)
  ///
  /// Example:
  /// ```dart
  /// Text('Centered').paddingHorizontal(24)
  /// // Same as: paddingSymmetric(horizontal: 24)
  /// ```
  Padding paddingHorizontal(double value, {Key? key}) => Padding(
    key: key,
    padding: EdgeInsets.symmetric(horizontal: value),
    child: this,
  );

  /// Adds vertical padding (top and bottom)
  ///
  /// Example:
  /// ```dart
  /// Text('Spaced').paddingVertical(16)
  /// // Same as: paddingSymmetric(vertical: 16)
  /// ```
  Padding paddingVertical(double value, {Key? key}) => Padding(
    key: key,
    padding: EdgeInsets.symmetric(vertical: value),
    child: this,
  );

  /// Adds directional padding (Start, Top, End, Bottom)
  ///
  /// This is RTL-aware: 'start' means left in LTR and right in RTL.
  ///
  /// Example:
  /// ```dart
  /// Text('RTL-aware').paddingSTEB(16, 8, 16, 12)
  /// ```
  Padding paddingSTEB(
    double start,
    double top,
    double end,
    double bottom, {
    Key? key,
  }) => Padding(
    key: key,
    padding: EdgeInsetsDirectional.fromSTEB(start, top, end, bottom),
    child: this,
  );

  /// Adds padding at the start (left in LTR, right in RTL)
  ///
  /// This is RTL-aware for internationalization.
  ///
  /// Example:
  /// ```dart
  /// Text('Content').paddingStart(16)
  /// ```
  Padding paddingStart(double start, {Key? key}) => Padding(
    key: key,
    padding: EdgeInsetsDirectional.only(start: start),
    child: this,
  );

  /// Adds padding at the end (right in LTR, left in RTL)
  ///
  /// This is RTL-aware for internationalization.
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.arrow_forward).paddingEnd(8)
  /// ```
  Padding paddingEnd(double end, {Key? key}) => Padding(
    key: key,
    padding: EdgeInsetsDirectional.only(end: end),
    child: this,
  );
}
