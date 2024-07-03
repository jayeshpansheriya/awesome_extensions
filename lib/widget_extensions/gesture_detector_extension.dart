part of '../awesome_extensions.dart';

extension GestureDetectorExt on Widget {
  Widget onDoubleTap(Function() function, {Key? key}) {
    return GestureDetector(
      key: key,
      onDoubleTap: function,
      child: this,
    );
  }

  Widget onLongPress(Function() function, {Key? key}) {
    return GestureDetector(
      key: key,
      onLongPress: function,
      child: this,
    );
  }

  Widget onTap(Function() function, {Key? key}) {
    return GestureDetector(
      key: key,
      onTap: function,
      child: this,
    );
  }
}
