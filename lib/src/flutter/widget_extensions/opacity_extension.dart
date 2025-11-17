import 'package:flutter/material.dart';

// ═══════════════════════════════════════════════════════════════════════════
// 🎨 AWESOME OPACITY EXTENSION
// ═══════════════════════════════════════════════════════════════════════════
//
// Apply opacity to any widget with a simple method call.
//
// ## 💡 Usage Examples
//
// ```dart
// Text('Faded').withOpacity(0.5)
// Image.asset('logo.png').withOpacity(0.7)
// Container(color: Colors.blue).withOpacity(0.3)
// ```
//
// ═══════════════════════════════════════════════════════════════════════════

/// 🎨 **Awesome Opacity Extension** on Widget
///
/// Provides a convenient way to apply opacity to widgets.
extension AwesomeOpacityExtension on Widget {
  /// Applies opacity to this widget
  ///
  /// The [opacity] value must be between 0.0 (fully transparent) and 1.0 (fully opaque).
  ///
  /// Example:
  /// ```dart
  /// Text('Semi-transparent').withOpacity(0.5)
  ///
  /// Container(
  ///   color: Colors.blue,
  ///   child: Text('Faded'),
  /// ).withOpacity(0.7)
  /// ```
  Opacity withOpacity(double opacity) => Opacity(opacity: opacity, child: this);
}
