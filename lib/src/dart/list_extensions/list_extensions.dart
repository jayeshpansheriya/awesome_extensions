import 'package:flutter/material.dart';

extension ListExtension on List {
  ///Returns items that are not null, for UI Widgets/PopupMenuItems etc.
  List<Widget> notNullWidget() {
    return whereType<Widget>().toList();
  }

  /// Returns a new list of widgets with the specified separator widget inserted
  /// between each pair of widgets from the original list.
  ///
  /// The method asserts that the list is of type `List<Widget>`.
  ///
  /// Example:
  /// ```dart
  /// List<Widget> widgets = [Widget1(), Widget2(), Widget3()];
  /// Widget separator = Divider();
  /// List<Widget> separatedWidgets = widgets.separatedby(separator);
  /// // Result: [Widget1(), Divider(), Widget2(), Divider(), Widget3()]
  /// ```
  ///
  /// - Parameter separator: The widget to insert between each pair of widgets.
  /// - Returns: A new list of widgets with the separator inserted.
  List<Widget> separatedby(Widget seperator) {
    assert(this is List<Widget>,
        'List should be a List<Widget> but is $runtimeType');
    final List<Widget> list = <Widget>[];
    for (int i = 0; i < length; i++) {
      list.add(this[i]);
      if (i != length - 1) {
        list.add(seperator);
      }
    }
    return list;
  }
}
