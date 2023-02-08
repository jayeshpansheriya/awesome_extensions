part of '../awesome_extensions.dart';

extension ExpandedExtension on Widget {
  Expanded expanded({int flex = 1}) => Expanded(
        child: this,
        flex: flex,
      );
}
