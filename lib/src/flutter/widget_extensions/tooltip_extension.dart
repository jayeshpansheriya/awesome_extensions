import 'package:flutter/material.dart';

// ═══════════════════════════════════════════════════════════════════════════
// 🎨 AWESOME TOOLTIP EXTENSION
// ═══════════════════════════════════════════════════════════════════════════
//
// Add tooltips to any widget with a simple method call.
//
// ## 💡 Usage Examples
//
// ```dart
// // Simple tooltip
// Icon(Icons.info).withTooltip('Information')
//
// // Customized tooltip
// Text('Hover me').withTooltip(
//   'This is a helpful message',
//   textStyle: TextStyle(fontSize: 14),
//   waitDuration: Duration(seconds: 1),
// )
// ```
//
// ═══════════════════════════════════════════════════════════════════════════

/// 🎨 **Awesome Tooltip Extension** on Widget
///
/// Provides a convenient way to add tooltips to any widget.
extension AwesomeTooltipExtension on Widget {
  /// Wraps this widget with a Tooltip
  ///
  /// The [message] is displayed when the user long-presses (on mobile)
  /// or hovers (on desktop/web) over the widget.
  ///
  /// Optional parameters allow customization of the tooltip appearance
  /// and behavior.
  ///
  /// Example:
  /// ```dart
  /// // Simple tooltip
  /// IconButton(
  ///   icon: Icon(Icons.delete),
  ///   onPressed: () {},
  /// ).withTooltip('Delete item')
  ///
  /// // Customized tooltip
  /// Container(
  ///   color: Colors.blue,
  ///   child: Text('Info'),
  /// ).withTooltip(
  ///   'This is important information',
  ///   textStyle: TextStyle(fontSize: 16, color: Colors.white),
  ///   decoration: BoxDecoration(
  ///     color: Colors.black87,
  ///     borderRadius: BorderRadius.circular(8),
  ///   ),
  ///   padding: EdgeInsets.all(12),
  ///   waitDuration: Duration(milliseconds: 500),
  /// )
  /// ```
  Widget withTooltip(
    String message, {
    Decoration? decoration,
    BoxConstraints? constraints,
    bool? preferBelow,
    EdgeInsetsGeometry? padding,
    TextStyle? textStyle,
    Duration? waitDuration,
    EdgeInsetsGeometry? margin,
  }) => Tooltip(
    message: message,
    decoration: decoration,
    constraints: constraints,
    padding: padding,
    preferBelow: preferBelow,
    textStyle: textStyle,
    waitDuration: waitDuration,
    margin: margin,
    child: this,
  );
}
