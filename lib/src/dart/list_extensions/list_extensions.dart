import 'package:flutter/material.dart';

extension IterableExtension<T> on Iterable<T> {
  /// Returns the first element matching [test], or `null` if no element was found.
  T? firstWhereOrNull(bool Function(T element) test) {
    for (var element in this) {
      if (test(element)) return element;
    }
    return null;
  }

  /// Returns the last element matching [test], or `null` if no element was found.
  T? lastWhereOrNull(bool Function(T element) test) {
    T? result;
    for (var element in this) {
      if (test(element)) result = element;
    }
    return result;
  }

  /// Splits the iterable into chunks of specified [size].
  List<List<T>> chunked(int size) {
    if (size <= 0) throw ArgumentError('Chunk size must be greater than 0');
    final chunks = <List<T>>[];
    final list = toList();
    for (var i = 0; i < list.length; i += size) {
      final end = (i + size < list.length) ? i + size : list.length;
      chunks.add(list.sublist(i, end));
    }
    return chunks;
  }

  /// Returns a new list containing elements distinct by key selector [selector].
  List<T> distinctBy<K>(K Function(T element) selector) {
    final seen = <K>{};
    return where((element) => seen.add(selector(element))).toList();
  }
}

extension ListExtension<T> on List<T> {
  /// Returns element at [index] or `null` if index is out of bounds.
  T? getOrNull(int index) {
    if (index < 0 || index >= length) return null;
    return this[index];
  }

  /// Returns items that are not null, for UI Widgets/PopupMenuItems etc.
  List<Widget> notNullWidget() {
    return whereType<Widget>().toList();
  }

  /// Returns a new list of widgets with the specified separator widget inserted
  /// between each pair of widgets from the original list.
  List<Widget> separatedBy(Widget separator) {
    final List<Widget> list = <Widget>[];
    for (int i = 0; i < length; i++) {
      final item = this[i];
      if (item is Widget) {
        list.add(item);
        if (i != length - 1) {
          list.add(separator);
        }
      }
    }
    return list;
  }

  @Deprecated('Use separatedBy instead')
  List<Widget> separatedby(Widget seperator) => separatedBy(seperator);
}
