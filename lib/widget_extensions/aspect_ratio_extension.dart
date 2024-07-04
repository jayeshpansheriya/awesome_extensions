part of '../awesome_extensions.dart';

extension AspectRatioExt on Widget {
  Widget ratio(double aspectRatio, {Key? key}) {
    return AspectRatio(
      key: key,
      aspectRatio: aspectRatio,
      child: this,
    );
  }
}
