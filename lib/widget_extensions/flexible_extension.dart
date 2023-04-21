part of '../awesome_extensions.dart';

extension FlexibleExtension on Widget {
  Flexible flexible({int flex = 1}) => Flexible(
        flex: flex,
        child: this,
      );
}
