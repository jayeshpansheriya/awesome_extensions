part of '../awesome_extensions.dart';

extension FlexibleExt on Widget {
  Flexible flexible({Key? key, int flex = 1, FlexFit fit = FlexFit.loose}) {
    return Flexible(
      key: key,
      flex: flex,
      fit: fit,
      child: this,
    );
  }
}
