import 'package:flutter/material.dart';

// ═══════════════════════════════════════════════════════════════════════════
// 🎨 AWESOME FLEXIBLE EXTENSION
// ═══════════════════════════════════════════════════════════════════════════
//
// Quickly wrap widgets in Flexible for responsive layouts.
//
// ## 💡 Usage Examples
//
// ```dart
// // In a Row or Column
// Row(
//   children: [
//     Text('Fixed'),
//     Text('Flexible').flexible(),
//     Text('More flex').flexible(flex: 2),
//   ],
// )
// ```
//
// ## 📝 Flexible vs Expanded
// - **Flexible**: Widget can shrink below its natural size
// - **Expanded**: Widget must fill all available space (Flexible with fit: FlexFit.tight)
//
// ═══════════════════════════════════════════════════════════════════════════

/// 🎨 **Awesome Flexible Extension** on Widget
///
/// Provides a convenient way to make widgets flexible in Row, Column, or Flex layouts.
extension AwesomeFlexibleExtension on Widget {
  /// Wraps this widget in a Flexible widget
  ///
  /// The [flex] parameter determines how much space this widget should take
  /// relative to other Flexible/Expanded widgets in the same Row/Column.
  /// Default is 1.
  ///
  /// Unlike Expanded, Flexible allows the widget to be smaller than the
  /// available space.
  ///
  /// Example:
  /// ```dart
  /// Row(
  ///   children: [
  ///     Text('Left'),
  ///     Text('Center').flexible(),        // Takes 1 part, can shrink
  ///     Text('Right').flexible(flex: 2),  // Takes 2 parts, can shrink
  ///   ],
  /// )
  /// ```
  Flexible flexible({int flex = 1}) => Flexible(flex: flex, child: this);
}
