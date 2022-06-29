part of '../awesome_extensions.dart';

extension StyledText<T extends Text> on T {
  Text copyWith({
    String? data,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
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
        textScaleFactor: textScaleFactor ?? this.textScaleFactor,
        textWidthBasis: textWidthBasis ?? this.textWidthBasis,
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
          fontSize: style?.fontSize,
          fontStyle: style?.fontStyle,
          fontWeight: style?.fontWeight,
          foreground: style?.foreground,
          height: style?.height,
          inherit: style?.inherit,
          letterSpacing: style?.letterSpacing,
          locale: style?.locale,
          shadows: style?.shadows,
          textBaseline: style?.textBaseline,
          wordSpacing: style?.wordSpacing,
        ),
      ) as T;

  T textScale(double scaleFactor) =>
      copyWith(textScaleFactor: scaleFactor) as T;

  T bold() => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontWeight: FontWeight.bold,
        ),
      ) as T;

  T italic() => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontStyle: FontStyle.italic,
        ),
      ) as T;

  T fontWeight(FontWeight fontWeight) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontWeight: fontWeight,
        ),
      ) as T;

  T fontSize(double size) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontSize: size,
        ),
      ) as T;

  T fontFamily(String font) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontFamily: font,
        ),
      ) as T;

  T letterSpacing(double space) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          letterSpacing: space,
        ),
      ) as T;

  T wordSpacing(double space) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          wordSpacing: space,
        ),
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

  T textColor(Color color) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          color: color,
        ),
      ) as T;

  T textAlignment(TextAlign align) => copyWith(textAlign: align) as T;

  T textDirection(TextDirection direction) =>
      copyWith(textDirection: direction) as T;

  T textBaseline(TextBaseline textBaseline) => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          textBaseline: textBaseline,
        ),
      ) as T;

  T textWidthBasis(TextWidthBasis textWidthBasis) =>
      copyWith(textWidthBasis: textWidthBasis) as T;

  T withUnderLine() => copyWith(
      style: (style ?? const TextStyle())
          .copyWith(decoration: TextDecoration.underline)) as T;
}
