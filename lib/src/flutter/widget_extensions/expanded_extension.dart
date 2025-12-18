import 'package:flutter/material.dart';

// ═══════════════════════════════════════════════════════════════════════════
// 🎨 AWESOME EXPANDED EXTENSION
// ═══════════════════════════════════════════════════════════════════════════
//
// Quickly wrap widgets in Expanded for flexible layouts.
//
// ## 💡 Usage Examples
//
// ```dart
// // In a Row or Column
// Row(
//   children: [
//     Text('Fixed'),
//     Text('Flexible').expanded(),
//     Text('More flex').expanded(flex: 2),
//   ],
// )
// ```
//
// ═══════════════════════════════════════════════════════════════════════════

/// 🎨 **Awesome Expanded Extension** on Widget
///
/// Provides a convenient way to make widgets expand to fill available space
/// in Row, Column, or Flex layouts.
extension AwesomeExpandedExtension on Widget {
  /// Wraps this widget in an Expanded widget
  ///
  /// The [flex] parameter determines how much space this widget should take
  /// relative to other Expanded widgets in the same Row/Column.
  /// Default is 1.
  ///
  /// Example:
  /// ```dart
  /// Row(
  ///   children: [
  ///     Text('Left'),
  ///     Text('Center').expanded(),        // Takes 1 part
  ///     Text('Right').expanded(flex: 2),  // Takes 2 parts
  ///   ],
  /// )
  /// ```
  Expanded expanded({int flex = 1}) => Expanded(flex: flex, child: this);
}
