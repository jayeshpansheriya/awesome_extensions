import 'package:flutter/material.dart';

extension PositionedExtensions on Widget {
  Positioned positionBottom({
    Key? key,
    required double bottom,
    double? width,
    double? height,
  }) =>
      Positioned(
        key: key,
        bottom: bottom,
        width: width,
        height: height,
        child: this,
      );

  Positioned positionLR({
    Key? key,
    required double left,
    required double right,
    double? width,
    double? height,
  }) =>
      Positioned(
        key: key,
        left: left,
        right: right,
        width: width,
        height: height,
        child: this,
      );

  Positioned positionLRTB({
    Key? key,
    required double top,
    required double bottom,
    required double left,
    required double right,
    double? width,
    double? height,
  }) =>
      Positioned(
        key: key,
        top: top,
        bottom: bottom,
        left: left,
        right: right,
        width: width,
        height: height,
        child: this,
      );

  Positioned positionTB({
    Key? key,
    required double top,
    required double bottom,
    double? width,
    double? height,
  }) =>
      Positioned(
        key: key,
        top: top,
        bottom: bottom,
        width: width,
        height: height,
        child: this,
      );

  Positioned positionTop({
    Key? key,
    required double top,
    double? width,
    double? height,
  }) =>
      Positioned(
        key: key,
        top: top,
        width: width,
        height: height,
        child: this,
      );
}
