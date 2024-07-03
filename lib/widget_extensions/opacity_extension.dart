part of '../awesome_extensions.dart';

extension OpacityExt on Widget {
  Opacity opacity({Key? key, required double opacity, bool alwaysIncludeSemantics = false}) {
    return Opacity(
      key: key,
      alwaysIncludeSemantics: alwaysIncludeSemantics,
      opacity: opacity,
      child: this,
    );
  }
}
