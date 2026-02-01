import 'package:flutter/widgets.dart';

extension TxtStyle on TextStyle {
  TextStyle withFontVariationWeight(double weight) {
    return copyWith(fontVariations: [FontVariation('wght', weight)]);
  }

  /// The most thick - FontWeight.w900
  TextStyle get mostThick => copyWith(
    fontWeight: .w900,
    fontVariations: const [FontVariation('wght', 900)],
  );
  TextStyle get w900 => copyWith(
    fontWeight: .w900,
    fontVariations: const [FontVariation('wght', 900)],
  );

  /// Extra-bold - FontWeight.w800
  TextStyle get extraBold => copyWith(
    fontWeight: .w800,
    fontVariations: const [FontVariation('wght', 800)],
  );
  TextStyle get w800 => copyWith(
    fontWeight: .w800,
    fontVariations: const [FontVariation('wght', 800)],
  );

  /// Bold - FontWeight.bold - FontWeight.w700
  TextStyle get bold => copyWith(
    fontWeight: .w700,
    fontVariations: const [FontVariation('wght', 700)],
  );
  TextStyle get w700 => copyWith(
    fontWeight: .w700,
    fontVariations: const [FontVariation('wght', 700)],
  );

  /// Semi-bold - FontWeight.w600
  TextStyle get semiBold => copyWith(
    fontWeight: .w600,
    fontVariations: const [FontVariation('wght', 600)],
  );
  TextStyle get w600 => copyWith(
    fontWeight: .w600,
    fontVariations: const [FontVariation('wght', 600)],
  );

  /// Medium - FontWeight.w500
  TextStyle get medium => copyWith(
    fontWeight: .w500,
    fontVariations: const [FontVariation('wght', 500)],
  );
  TextStyle get w500 => copyWith(
    fontWeight: .w500,
    fontVariations: const [FontVariation('wght', 500)],
  );

  /// Regular - FontWeight.w400
  TextStyle get regular => copyWith(
    fontWeight: .w400,
    fontVariations: const [FontVariation('wght', 400)],
  );
  TextStyle get w400 => copyWith(
    fontWeight: .w400,
    fontVariations: const [FontVariation('wght', 400)],
  );

  /// Light - FontWeight.w300
  TextStyle get light => copyWith(
    fontWeight: .w300,
    fontVariations: const [FontVariation('wght', 300)],
  );
  TextStyle get w300 => copyWith(
    fontWeight: .w300,
    fontVariations: const [FontVariation('wght', 300)],
  );

  /// Extra-light - FontWeight.w200
  TextStyle get extraLight => copyWith(
    fontWeight: .w200,
    fontVariations: const [FontVariation('wght', 200)],
  );
  TextStyle get w200 => copyWith(
    fontWeight: .w200,
    fontVariations: const [FontVariation('wght', 200)],
  );

  /// Thin, the least thick - FontWeight.w100
  TextStyle get thin => copyWith(
    fontWeight: .w100,
    fontVariations: const [FontVariation('wght', 100)],
  );
  TextStyle get w100 => copyWith(
    fontWeight: .w100,
    fontVariations: const [FontVariation('wght', 100)],
  );
}
