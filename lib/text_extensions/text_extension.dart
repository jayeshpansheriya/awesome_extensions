part of '../awesome_extensions.dart';

extension TextExt<T extends Text> on T {
  T bold() {
    return copyWith(
      style: (style ?? const TextStyle()).copyWith(
        fontWeight: FontWeight.bold,
      ),
    ) as T;
  }

  Text copyWith({
    Key? key,
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
  }) {
    return Text(
      data ?? this.data ?? '',
      key: key,
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
  }

  Text copyWithRich({
    Key? key,
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
  }) {
    return Text.rich(
      textSpan ?? this.textSpan!,
      key: key,
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
  }

  T family(String family) {
    return copyWith(
      style: (style ?? const TextStyle()).copyWith(
        fontFamily: family,
      ),
    ) as T;
  }

  T size(double size) {
    return copyWith(
      style: (style ?? const TextStyle()).copyWith(
        fontSize: size,
      ),
    ) as T;
  }

  T weight(FontWeight weight) {
    return copyWith(
      style: (style ?? const TextStyle()).copyWith(
        fontWeight: weight,
      ),
    ) as T;
  }

  T italic() => copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontStyle: FontStyle.italic,
        ),
      ) as T;

  T letterSpacing(double space) {
    return copyWith(
      style: (style ?? const TextStyle()).copyWith(
        letterSpacing: space,
      ),
    ) as T;
  }

  T align(TextAlign align) {
    return copyWith(textAlign: align) as T;
  }

  T baseline(TextBaseline textBaseline) {
    return copyWith(
      style: (style ?? const TextStyle()).copyWith(
        textBaseline: textBaseline,
      ),
    ) as T;
  }

  T color(Color color) {
    return copyWith(
      style: (style ?? const TextStyle()).copyWith(
        color: color,
      ),
    ) as T;
  }

  T direction(TextDirection direction) {
    return copyWith(textDirection: direction) as T;
  }

  T scaler(TextScaler scaler) {
    return copyWith(
      textScaler: scaler,
    ) as T;
  }

  T shadow({Color color = const Color.fromRGBO(0, 0, 0, .2), double blurRadius = 0.0, Offset offset = Offset.zero}) {
    return copyWith(
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
  }

  T textStyle(TextStyle? style) {
    return copyWith(
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
  }

  T widthBasis(TextWidthBasis textWidthBasis) {
    return copyWith(textWidthBasis: textWidthBasis) as T;
  }

  T underLine() {
    return copyWith(style: (style ?? const TextStyle()).copyWith(decoration: TextDecoration.underline)) as T;
  }

  T wordSpacing(double space) {
    return copyWith(
      style: (style ?? const TextStyle()).copyWith(
        wordSpacing: space,
      ),
    ) as T;
  }
}
