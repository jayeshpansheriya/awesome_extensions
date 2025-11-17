import 'package:flutter/material.dart';

// ═══════════════════════════════════════════════════════════════════════════
// 🎨 AWESOME TEXT EXTENSIONS
// ═══════════════════════════════════════════════════════════════════════════
//
// Optimized text extensions that minimize object churn by efficiently copying
// Text widget properties while only modifying the TextStyle.
//
// ## 🚀 Performance Optimization
// - **Efficient property copying**: Reuses all Text widget properties
// - **Style-only modifications**: Only TextStyle is modified on each call
// - **Optimized allocations**: Minimal memory overhead per style change
//
// ## 💡 Usage Examples
//
// ### From String (Most Common)
// ```dart
// 'Hello Awesome!'
//   .text()
//   .fontSize(24)
//   .bold
//   .textColor(Colors.blue)
//   .letterSpacing(1.2)
// ```
//
// ### From Existing Text Widget
// ```dart
// Text('Hello')
//   .fontSize(24)
//   .bold
//   .textColor(Colors.blue)
// ```
//
// ### Chaining Multiple Styles
// ```dart
// 'Awesome Extensions'
//   .text()
//   .fontSize(32)
//   .fontWeight(FontWeight.w700)
//   .textColor(Colors.deepPurple)
//   .letterSpacing(1.5)
//   .height(1.8)
//   .withUnderLine
// ```
//
// ═══════════════════════════════════════════════════════════════════════════

// ═══════════════════════════════════════════════════════════════════════════
// 🎨 AWESOME TEXT STYLE EXTENSIONS - Extension on Text Widget
// ═══════════════════════════════════════════════════════════════════════════

/// 🎨 **Awesome Text Styling Extension**
///
/// This extension provides a fluent API for styling Text widgets by chaining
/// style methods. Each method returns a new Text widget with the updated style,
/// while efficiently preserving all other Text widget properties.
///
/// ## 💡 Usage
/// ```dart
/// Text('Hello')
///   .fontSize(24)
///   .bold()
///   .textColor(Colors.blue)
///   .letterSpacing(1.2)
/// ```
extension AwesomeTextExtensions on Text {
  /// 🔧 Internal helper to create optimized Text with merged style
  ///
  /// This method applies a style transformation and returns a new Text widget
  /// with all properties preserved except the modified style.
  Text _withStyle(TextStyle Function(TextStyle) modifier) {
    final baseStyle = style ?? const TextStyle();
    final newStyle = modifier(baseStyle);

    return Text(
      data ?? '',
      key: key,
      style: newStyle,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }

  /// 🔧 Internal helper to update Text widget properties (non-style)
  ///
  /// This method updates Text widget properties like alignment, direction, etc.
  /// while preserving the current style.
  Text _withProperties({
    TextAlign? textAlign,
    TextDirection? textDirection,
    TextScaler? textScaler,
    TextWidthBasis? textWidthBasis,
    int? maxLines,
    TextOverflow? overflow,
    bool? softWrap,
  }) {
    return Text(
      data ?? '',
      key: key,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign ?? this.textAlign,
      textDirection: textDirection ?? this.textDirection,
      locale: locale,
      softWrap: softWrap ?? this.softWrap,
      overflow: overflow ?? this.overflow,
      textScaler: textScaler ?? this.textScaler,
      maxLines: maxLines ?? this.maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis ?? this.textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // 🎨 AWESOME STYLE METHODS - All return Text for seamless chaining
  // ═══════════════════════════════════════════════════════════════════════════

  /// Makes the text **bold** (FontWeight.bold / FontWeight.w700)
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').bold
  /// 'Hello'.text().bold
  /// ```
  Text get bold => _withStyle((s) => s.copyWith(fontWeight: FontWeight.bold));

  /// Makes the text *italic*
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').italic
  /// 'Hello'.text().italic
  /// ```
  Text get italic => _withStyle((s) => s.copyWith(fontStyle: FontStyle.italic));

  /// Sets the font size in logical pixels
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').fontSize(24)
  /// 'Hello'.text().fontSize(18.5)
  /// ```
  Text fontSize(double size) => _withStyle((s) => s.copyWith(fontSize: size));

  /// Sets the font family
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').fontFamily('Roboto')
  /// 'Hello'.text().fontFamily('Arial')
  /// ```
  Text fontFamily(String font) =>
      _withStyle((s) => s.copyWith(fontFamily: font));

  /// Sets the font weight (w100 to w900)
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').fontWeight(FontWeight.w600)
  /// 'Hello'.text().fontWeight(FontWeight.w300)
  /// ```
  Text fontWeight(FontWeight weight) =>
      _withStyle((s) => s.copyWith(fontWeight: weight));

  /// Sets the text color
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').textColor(Colors.blue)
  /// 'Hello'.text().textColor(Colors.red.shade700)
  /// ```
  Text textColor(Color color) => _withStyle((s) => s.copyWith(color: color));

  /// Sets the letter spacing (space between characters)
  ///
  /// Positive values spread characters apart, negative values bring them closer.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').letterSpacing(2.0)
  /// 'Hello'.text().letterSpacing(-0.5)
  /// ```
  Text letterSpacing(double space) =>
      _withStyle((s) => s.copyWith(letterSpacing: space));

  /// Sets the word spacing (space between words)
  ///
  /// Positive values increase space, negative values decrease it.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').wordSpacing(5.0)
  /// 'Hello World'.text().wordSpacing(10.0)
  /// ```
  Text wordSpacing(double space) =>
      _withStyle((s) => s.copyWith(wordSpacing: space));

  /// Sets the line height multiplier
  ///
  /// A value of 1.5 means 1.5x the font size for line height.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').height(1.5)
  /// 'Hello'.text().height(2.0)
  /// ```
  Text height(double height) => _withStyle((s) => s.copyWith(height: height));

  /// Sets the text baseline (alphabetic or ideographic)
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').textBaseline(TextBaseline.alphabetic)
  /// 'Hello'.text().textBaseline(TextBaseline.ideographic)
  /// ```
  Text textBaseline(TextBaseline baseline) =>
      _withStyle((s) => s.copyWith(textBaseline: baseline));

  /// Adds an underline decoration to the text
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').withUnderLine
  /// 'Hello'.text().withUnderLine
  /// ```
  Text get withUnderLine =>
      _withStyle((s) => s.copyWith(decoration: TextDecoration.underline));

  /// Adds a line-through (strikethrough) decoration to the text
  ///
  /// Example:
  /// ```dart
  /// Text('Deleted').lineThrough
  /// 'Old Price'.text().lineThrough
  /// ```
  Text get lineThrough =>
      _withStyle((s) => s.copyWith(decoration: TextDecoration.lineThrough));

  /// Applies a custom text decoration
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').decoration(TextDecoration.overline)
  /// 'Hello'.text().decoration(TextDecoration.combine([
  ///   TextDecoration.underline,
  ///   TextDecoration.overline,
  /// ]))
  /// ```
  Text decoration(TextDecoration decoration) =>
      _withStyle((s) => s.copyWith(decoration: decoration));

  /// Adds a shadow effect to the text
  ///
  /// Parameters:
  /// - `color`: Shadow color (default: semi-transparent black)
  /// - `blurRadius`: How much to blur the shadow (default: 0.0)
  /// - `offset`: Shadow offset from text (default: Offset.zero)
  ///
  /// Example:
  /// ```dart
  /// Text('Glowing').textShadow(
  ///   color: Colors.blue.withOpacity(0.5),
  ///   blurRadius: 10.0,
  ///   offset: Offset(2, 2),
  /// )
  /// ```
  Text textShadow({
    Color color = const Color(0x34000000),
    double blurRadius = 0.0,
    Offset offset = Offset.zero,
  }) => _withStyle(
    (s) => s.copyWith(
      shadows: [Shadow(color: color, blurRadius: blurRadius, offset: offset)],
    ),
  );

  /// Applies a complete TextStyle to the text
  ///
  /// This merges all properties from the provided TextStyle into the current style.
  /// Useful when you have a predefined TextStyle you want to apply.
  ///
  /// Example:
  /// ```dart
  /// final myStyle = TextStyle(fontSize: 20, color: Colors.red);
  /// Text('Hello').textStyle(myStyle)
  /// ```
  Text textStyle(TextStyle style) => _withStyle(
    (s) => s.copyWith(
      background: style.background,
      backgroundColor: style.backgroundColor,
      color: style.color,
      debugLabel: style.debugLabel,
      decoration: style.decoration,
      decorationColor: style.decorationColor,
      decorationStyle: style.decorationStyle,
      decorationThickness: style.decorationThickness,
      fontFamily: style.fontFamily,
      fontFamilyFallback: style.fontFamilyFallback,
      fontFeatures: style.fontFeatures,
      fontVariations: style.fontVariations,
      fontSize: style.fontSize,
      fontStyle: style.fontStyle,
      fontWeight: style.fontWeight,
      foreground: style.foreground,
      height: style.height,
      leadingDistribution: style.leadingDistribution,
      inherit: style.inherit,
      letterSpacing: style.letterSpacing,
      locale: style.locale,
      shadows: style.shadows,
      textBaseline: style.textBaseline,
      wordSpacing: style.wordSpacing,
      overflow: style.overflow,
    ),
  );

  // ═══════════════════════════════════════════════════════════════════════════
  // 📐 TEXT WIDGET PROPERTY METHODS - Control text layout and behavior
  // ═══════════════════════════════════════════════════════════════════════════

  /// Sets text alignment (left, right, center, justify, start, end)
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').textAlignment(TextAlign.center)
  /// 'Hello'.text().textAlignment(TextAlign.right)
  /// ```
  Text textAlignment(TextAlign align) => _withProperties(textAlign: align);

  /// Sets text direction (ltr or rtl)
  ///
  /// Example:
  /// ```dart
  /// Text('مرحبا').textDirection(TextDirection.rtl)
  /// 'مرحبا'.text().textDirection(TextDirection.rtl)
  /// ```
  Text textDirection(TextDirection direction) =>
      _withProperties(textDirection: direction);

  /// Sets the text scaling factor
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').textScale(TextScaler.linear(1.5))
  /// 'Hello'.text().textScale(TextScaler.linear(2.0))
  /// ```
  Text textScale(TextScaler scaler) => _withProperties(textScaler: scaler);

  /// Sets how to measure the width of the text
  ///
  /// Example:
  /// ```dart
  /// Text('Hello').textWidthBasis(TextWidthBasis.longestLine)
  /// 'Hello'.text().textWidthBasis(TextWidthBasis.parent)
  /// ```
  Text textWidthBasis(TextWidthBasis basis) =>
      _withProperties(textWidthBasis: basis);

  /// Sets the maximum number of lines for the text
  ///
  /// Example:
  /// ```dart
  /// Text('Long text...').maxLines(2)
  /// 'Long text...'.text().maxLines(3)
  /// ```
  Text maxLines(int lines) => _withProperties(maxLines: lines);

  /// Sets how visual overflow should be handled
  ///
  /// Example:
  /// ```dart
  /// Text('Long text...').overflow(TextOverflow.ellipsis)
  /// 'Long text...'.text().overflow(TextOverflow.fade)
  /// ```
  Text overflow(TextOverflow overflow) => _withProperties(overflow: overflow);

  /// Sets whether the text should break at soft line breaks
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').softWrap(false)
  /// 'Hello World'.text().softWrap(true)
  /// ```
  Text softWrap(bool wrap) => _withProperties(softWrap: wrap);
}

// ═══════════════════════════════════════════════════════════════════════════
// ✨ AWESOME STRING EXTENSION - Start your text styling journey here!
// ═══════════════════════════════════════════════════════════════════════════

/// 🎨 **Awesome Text Extension** on String
///
/// This extension allows you to convert any String into a Text widget and
/// immediately start chaining style methods for a fluent, readable API.
///
/// ## 🌟 Key Benefits
/// - **Readable**: Code reads like natural language
/// - **Chainable**: Unlimited method chaining
/// - **Efficient**: Optimized property copying
/// - **Flexible**: All Text widget properties supported
/// - **Concise**: Use getters for simple styles (.bold, .italic)
///
/// ## 📚 Complete Usage Examples
///
/// ### Basic Styling
/// ```dart
/// 'Hello World'.text().fontSize(24).bold
/// ```
///
/// ### Advanced Styling
/// ```dart
/// 'Awesome Extensions'
///   .text()
///   .fontSize(32)
///   .fontFamily('Roboto')
///   .fontWeight(FontWeight.w700)
///   .textColor(Colors.deepPurple)
///   .letterSpacing(1.2)
///   .height(1.5)
///   .textAlignment(TextAlign.center)
/// ```
///
/// ### With Shadow Effect
/// ```dart
/// 'Glowing Text'
///   .text()
///   .fontSize(28)
///   .bold
///   .textColor(Colors.white)
///   .textShadow(
///     color: Colors.blue.withOpacity(0.5),
///     blurRadius: 10,
///     offset: Offset(0, 2),
///   )
/// ```
///
/// ### With Multiple Properties
/// ```dart
/// 'Long Text Content'
///   .text(maxLines: 2, overflow: TextOverflow.ellipsis)
///   .fontSize(16)
///   .textColor(Colors.grey)
/// ```
extension AwesomeStringExtension on String {
  /// 🚀 Creates a Text widget from this String
  ///
  /// This is the entry point for all text styling. Call `.text()` on any String
  /// to create a Text widget that you can immediately style with chaining.
  ///
  /// **All parameters are optional** and match the Text widget constructor.
  ///
  /// Example:
  /// ```dart
  /// 'Hello World'
  ///   .text(
  ///     style: TextStyle(fontSize: 16),
  ///     textAlign: TextAlign.center,
  ///     maxLines: 2,
  ///   )
  ///   .bold
  ///   .textColor(Colors.blue)
  /// ```
  Text text({
    Key? key,
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
      this,
      key: key,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: textScaler,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }
}
