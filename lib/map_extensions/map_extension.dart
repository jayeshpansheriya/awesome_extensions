part of '../awesome_extensions.dart';

extension MapExt on Map {
  String get encode => jsonEncode(this);

  String get encodePretty => const JsonEncoder.withIndent('  ').convert(this);

  Map<K, V> get<K, V>(dynamic key) {
    return this[key] as Map<K, V>;
  }
}
