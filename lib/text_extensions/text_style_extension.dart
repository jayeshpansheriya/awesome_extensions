part of '../awesome_extensions.dart';

extension TxtStyle on TextStyle {
  /// The most thick - FontWeight.w900
  TextStyle get mostThick => TextStyle(
      fontSize: fontSize, fontFamily: fontFamily, fontWeight: FontWeight.w900);

  /// Extra-bold - FontWeight.w800
  TextStyle get extraBold => TextStyle(
      fontSize: fontSize, fontFamily: fontFamily, fontWeight: FontWeight.w800);

  /// Bold - FontWeight.bold - FontWeight.w700
  TextStyle get bold => TextStyle(
      fontSize: fontSize, fontFamily: fontFamily, fontWeight: FontWeight.w700);

  /// Semi-bold - FontWeight.w600
  TextStyle get semiBold => TextStyle(
      fontSize: fontSize, fontFamily: fontFamily, fontWeight: FontWeight.w600);

  /// Medium - FontWeight.w500
  TextStyle get medium => TextStyle(
      fontSize: fontSize, fontFamily: fontFamily, fontWeight: FontWeight.w500);

  /// Regular - FontWeight.w400
  TextStyle get regular => TextStyle(
      fontSize: fontSize, fontFamily: fontFamily, fontWeight: FontWeight.w400);

  /// Light - FontWeight.w300
  TextStyle get light => TextStyle(
      fontSize: fontSize, fontFamily: fontFamily, fontWeight: FontWeight.w300);

  /// Extra-light - FontWeight.w200
  TextStyle get extraLight => TextStyle(
      fontSize: fontSize, fontFamily: fontFamily, fontWeight: FontWeight.w200);

  /// Thin, the least thick - FontWeight.w100
  TextStyle get thin => TextStyle(
      fontSize: fontSize, fontFamily: fontFamily, fontWeight: FontWeight.w100);
}
