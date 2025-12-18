import 'package:flutter/widgets.dart';

// ═══════════════════════════════════════════════════════════════════════════
// 🎨 AWESOME SLIVER EXTENSIONS
// ═══════════════════════════════════════════════════════════════════════════
//
// Convert regular widgets into sliver widgets for use in CustomScrollView,
// SliverList, and other sliver-based layouts.
//
// ## 💡 Usage Example
//
// ```dart
// CustomScrollView(
//   slivers: [
//     Text('Header').sliver,
//     Container(height: 100).sliver,
//     ListView.builder(...).sliver,
//   ],
// )
// ```
//
// ═══════════════════════════════════════════════════════════════════════════

/// 🎨 **Awesome Sliver Extension** on Widget
///
/// Provides convenient conversion from regular widgets to sliver widgets.
extension AwesomeSliverExtension on Widget {
  /// Wraps this widget in a SliverToBoxAdapter
  ///
  /// Use this to include regular (non-sliver) widgets in a sliver-based
  /// scrollable layout like CustomScrollView.
  ///
  /// Example:
  /// ```dart
  /// CustomScrollView(
  ///   slivers: [
  ///     Text('Title').sliver,
  ///     Image.asset('logo.png').sliver,
  ///     Container(height: 50, color: Colors.blue).sliver,
  ///   ],
  /// )
  /// ```
  Widget get sliver => SliverToBoxAdapter(child: this);
}
