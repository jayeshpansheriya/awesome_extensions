part of '../awesome_extensions.dart';

extension ListExtension on List {
  ///Returns items that are not null, for UI Widgets/PopupMenuItems etc.
  List<Widget> notNullWidget() {
    return whereType<Widget>().toList();
  }
}
