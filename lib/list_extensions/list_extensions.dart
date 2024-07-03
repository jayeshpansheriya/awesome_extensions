part of '../awesome_extensions.dart';

extension ListExt on List {
  List<Widget> notNullWidget() {
    return whereType<Widget>().toList();
  }
}
