import 'package:flutter/material.dart';

// ═══════════════════════════════════════════════════════════════════════════
// 🎨 AWESOME COMMON WIDGET EXTENSIONS
// ═══════════════════════════════════════════════════════════════════════════
//
// Common utility extensions for conditional widget rendering and other
// frequently used widget operations.
//
// ## 💡 Usage Examples
//
// ```dart
// // Conditional rendering
// Text('Premium Feature').showIf(isPremiumUser)
//
// // In a Column
// Column(
//   children: [
//     Text('Always visible'),
//     Text('Sometimes visible').showIf(condition),
//     Text('Another widget'),
//   ].whereType<Widget>().toList(),
// )
// ```
//
// ═══════════════════════════════════════════════════════════════════════════

/// 🎨 **Awesome Common Widget Extension** on Widget
///
/// Provides common utility methods for all widgets.
extension AwesomeCommonWidgetExtension on Widget {
  /// Conditionally shows this widget based on a boolean condition
  ///
  /// Returns this widget if [condition] is true, otherwise returns null.
  /// Useful for conditional rendering in lists of widgets.
  ///
  /// Example:
  /// ```dart
  /// Column(
  ///   children: [
  ///     Text('Always shown'),
  ///     Text('Admin only').showIf(isAdmin),
  ///     Text('Premium feature').showIf(isPremium),
  ///   ].whereType<Widget>().toList(),
  /// )
  ///
  /// // Or with null-aware operator
  /// Row(
  ///   children: [
  ///     Text('Left'),
  ///     if (showMiddle) Text('Middle'),
  ///     Text('Right'),
  ///   ],
  /// )
  /// ```
  Widget? showIf(bool condition) => condition ? this : null;
}
