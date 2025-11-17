import 'package:flutter/material.dart';

// ═══════════════════════════════════════════════════════════════════════════
// 🎨 AWESOME CENTER EXTENSION
// ═══════════════════════════════════════════════════════════════════════════
//
// Quickly center any widget with a simple getter.
//
// ## 💡 Usage Examples
//
// ```dart
// Text('Centered').center
// Image.asset('logo.png').center
// Column(children: [...]).center
// ```
//
// ═══════════════════════════════════════════════════════════════════════════

/// 🎨 **Awesome Center Extension** on Widget
///
/// Provides a convenient way to center widgets without verbose wrapping.
extension AwesomeCenterExtension on Widget {
  /// Centers this widget horizontally and vertically
  ///
  /// Wraps the widget in a Center widget, which centers its child
  /// within the available space.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').center
  ///
  /// // Instead of:
  /// Center(child: Text('Hello World'))
  /// ```
  Center get center => Center(child: this);
}
