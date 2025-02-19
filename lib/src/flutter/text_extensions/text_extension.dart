import 'package:flutter/material.dart';

extension StyledText<T extends Text> on T {
  T bold() => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontWeight: FontWeight.bold,
        ),
      ) as T;

  Text copyWith({
    String? data,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    TextScaler? textScaler,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
  }) =>
      Text(
        data ?? this.data ?? "",
        style: style ?? this.style,
        strutStyle: strutStyle ?? this.strutStyle,
        textAlign: textAlign ?? this.textAlign,
        locale: locale ?? this.locale,
        maxLines: maxLines ?? this.maxLines,
        overflow: overflow ?? this.overflow,
        semanticsLabel: semanticsLabel ?? this.semanticsLabel,
        softWrap: softWrap ?? this.softWrap,
        textDirection: textDirection ?? this.textDirection,
        textScaler: textScaler ?? this.textScaler,
        textWidthBasis: textWidthBasis ?? this.textWidthBasis,
        textHeightBehavior: textHeightBehavior ?? this.textHeightBehavior,
        selectionColor: selectionColor ?? this.selectionColor,
      );

  T textStyle(TextStyle? style) => copyWith(
        style: (this.style ?? const TextStyle()).copyWith(
          background: style?.background,
          backgroundColor: style?.backgroundColor,
          color: style?.color,
          debugLabel: style?.debugLabel,
          decoration: style?.decoration,
          decorationColor: style?.decorationColor,
          decorationStyle: style?.decorationStyle,
          decorationThickness: style?.decorationThickness,
          fontFamily: style?.fontFamily,
          fontFamilyFallback: style?.fontFamilyFallback,
          fontFeatures: style?.fontFeatures,
          fontVariations: style?.fontVariations,
          fontSize: style?.fontSize,
          fontStyle: style?.fontStyle,
          fontWeight: style?.fontWeight,
          foreground: style?.foreground,
          height: style?.height,
          leadingDistribution: style?.leadingDistribution,
          inherit: style?.inherit,
          letterSpacing: style?.letterSpacing,
          locale: style?.locale,
          shadows: style?.shadows,
          textBaseline: style?.textBaseline,
          wordSpacing: style?.wordSpacing,
          overflow: style?.overflow,
        ),
      ) as T;

  Text copyWithRich({
    InlineSpan? textSpan,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    TextScaler? textScaler,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
  }) =>
      Text.rich(
        textSpan ?? this.textSpan!,
        style: style ?? this.style,
        strutStyle: strutStyle ?? this.strutStyle,
        textAlign: textAlign ?? this.textAlign,
        locale: locale ?? this.locale,
        maxLines: maxLines ?? this.maxLines,
        overflow: overflow ?? this.overflow,
        semanticsLabel: semanticsLabel ?? this.semanticsLabel,
        softWrap: softWrap ?? this.softWrap,
        textDirection: textDirection ?? this.textDirection,
        // ignore: deprecated_member_use
        textScaleFactor: textScaleFactor ?? this.textScaleFactor,
        textScaler: textScaler ?? this.textScaler,
        textWidthBasis: textWidthBasis ?? this.textWidthBasis,
        textHeightBehavior: textHeightBehavior ?? this.textHeightBehavior,
        selectionColor: selectionColor ?? this.selectionColor,
      );

  T fontFamily(String font) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontFamily: font,
        ),
      ) as T;

  T fontSize(double size) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontSize: size,
        ),
      ) as T;

  T fontWeight(FontWeight fontWeight) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontWeight: fontWeight,
        ),
      ) as T;

  T italic() => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontStyle: FontStyle.italic,
        ),
      ) as T;

  T letterSpacing(double space) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          letterSpacing: space,
        ),
      ) as T;

  T height(double height) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          height: height,
        ),
      ) as T;

  T textAlignment(TextAlign align) => copyWith(textAlign: align) as T;

  T textBaseline(TextBaseline textBaseline) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          textBaseline: textBaseline,
        ),
      ) as T;

  T textColor(Color color) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          color: color,
        ),
      ) as T;

  T textDirection(TextDirection direction) =>
      copyWith(textDirection: direction) as T;

  T textScale(TextScaler textScaler) => copyWith(
        textScaler: textScaler,
      ) as T;

  T textShadow({
    Color color = const Color(0x34000000),
    double blurRadius = 0.0,
    Offset offset = Offset.zero,
  }) =>
      copyWith(
        style: (style ?? const TextStyle()).copyWith(
          shadows: [
            Shadow(
              color: color,
              blurRadius: blurRadius,
              offset: offset,
            ),
          ],
        ),
      ) as T;

  T textWidthBasis(TextWidthBasis textWidthBasis) =>
      copyWith(textWidthBasis: textWidthBasis) as T;

  T withUnderLine() => copyWith(
      style: (style ?? const TextStyle())
          .copyWith(decoration: TextDecoration.underline)) as T;

  T wordSpacing(double space) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          wordSpacing: space,
        ),
      ) as T;
}
