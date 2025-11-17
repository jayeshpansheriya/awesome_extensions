import 'package:flutter/material.dart';

// ═══════════════════════════════════════════════════════════════════════════
// 🎨 AWESOME GESTURE DETECTOR EXTENSIONS
// ═══════════════════════════════════════════════════════════════════════════
//
// Add gesture detection to any widget with simple method calls.
//
// ## 💡 Usage Examples
//
// ```dart
// Text('Tap me').onTap(() => print('Tapped!'))
//
// Container(color: Colors.blue)
//   .onTap(() => navigate())
//   .onLongPress(() => showMenu())
//   .onDoubleTap(() => zoom())
// ```
//
// ═══════════════════════════════════════════════════════════════════════════

/// 🎨 **Awesome Gesture Detector Extension** on Widget
///
/// Provides convenient methods to add gesture detection to any widget.
extension AwesomeGestureDetectorExtension on Widget {
  /// Adds a tap gesture detector to this widget
  ///
  /// The [function] callback is called when the user taps on the widget.
  ///
  /// Example:
  /// ```dart
  /// Text('Click me').onTap(() {
  ///   print('Widget tapped!');
  /// })
  ///
  /// Container(
  ///   color: Colors.blue,
  ///   child: Text('Button'),
  /// ).onTap(() => handleClick())
  /// ```
  Widget onTap(VoidCallback function) =>
      GestureDetector(onTap: function, child: this);

  /// Adds a double-tap gesture detector to this widget
  ///
  /// The [function] callback is called when the user double-taps on the widget.
  ///
  /// Example:
  /// ```dart
  /// Image.asset('photo.jpg').onDoubleTap(() {
  ///   print('Image double-tapped!');
  /// })
  /// ```
  Widget onDoubleTap(VoidCallback function) =>
      GestureDetector(onDoubleTap: function, child: this);

  /// Adds a long-press gesture detector to this widget
  ///
  /// The [function] callback is called when the user long-presses on the widget.
  ///
  /// Example:
  /// ```dart
  /// Text('Hold me').onLongPress(() {
  ///   showContextMenu();
  /// })
  /// ```
  Widget onLongPress(VoidCallback function) =>
      GestureDetector(onLongPress: function, child: this);
}
