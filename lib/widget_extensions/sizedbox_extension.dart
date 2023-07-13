part of '../awesome_extensions.dart';

extension SizedBoxExtension on Widget {
  SizedBox sizedBox({Key? key, double? height, double? width}) => SizedBox(
    key: key,
    height: height,
    width: width,
    child: this,
  );
}