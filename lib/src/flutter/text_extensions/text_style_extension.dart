import 'package:flutter/material.dart';

// ═══════════════════════════════════════════════════════════════════════════
// 🎨 AWESOME TEXTSTYLE EXTENSIONS
// ═══════════════════════════════════════════════════════════════════════════
//
// Convenient extensions on TextStyle for quick font weight, size, and color
// modifications. Perfect for creating reusable text styles in your theme.
//
// ## 💡 Usage Examples
//
// ### Font Weight Shortcuts
// ```dart
// TextStyle().bold        // FontWeight.w700
// TextStyle().semiBold    // FontWeight.w600
// TextStyle().w500        // FontWeight.w500
// ```
//
// ### Combining with Other Properties
// ```dart
// TextStyle(fontSize: 24).bold.withColor(Colors.blue)
// Theme.of(context).textTheme.bodyLarge?.semiBold.size(18)
// ```
//
// ═══════════════════════════════════════════════════════════════════════════

/// 🎨 **Awesome TextStyle Extensions**
///
/// Provides convenient getters and methods for common TextStyle modifications,
/// making it easy to create and modify text styles with a fluent API.
extension AwesomeTextStyleExtensions on TextStyle {
  // ═══════════════════════════════════════════════════════════════════════════
  // 💪 FONT WEIGHT GETTERS - Quick access to all font weights
  // ═══════════════════════════════════════════════════════════════════════════

  /// **Most thick** - FontWeight.w900 (Black)
  ///
  /// Example:
  /// ```dart
  /// TextStyle().mostThick
  /// Theme.of(context).textTheme.headline1?.mostThick
  /// ```
  TextStyle get mostThick => copyWith(fontWeight: FontWeight.w900);

  /// **w900** - FontWeight.w900 (Black) - Alias for `mostThick`
  ///
  /// Example: `TextStyle().w900`
  TextStyle get w900 => copyWith(fontWeight: FontWeight.w900);

  /// **Extra-bold** - FontWeight.w800 (Extra Bold)
  ///
  /// Example:
  /// ```dart
  /// TextStyle().extraBold
  /// Theme.of(context).textTheme.headline2?.extraBold
  /// ```
  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800);

  /// **w800** - FontWeight.w800 (Extra Bold) - Alias for `extraBold`
  ///
  /// Example: `TextStyle().w800`
  TextStyle get w800 => copyWith(fontWeight: FontWeight.w800);

  /// **Bold** - FontWeight.w700 (Bold)
  ///
  /// The standard bold weight, equivalent to FontWeight.bold.
  ///
  /// Example:
  /// ```dart
  /// TextStyle().bold
  /// Theme.of(context).textTheme.bodyLarge?.bold
  /// ```
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);

  /// **w700** - FontWeight.w700 (Bold) - Alias for `bold`
  ///
  /// Example: `TextStyle().w700`
  TextStyle get w700 => copyWith(fontWeight: FontWeight.w700);

  /// **Semi-bold** - FontWeight.w600 (Semi Bold)
  ///
  /// Example:
  /// ```dart
  /// TextStyle().semiBold
  /// Theme.of(context).textTheme.bodyMedium?.semiBold
  /// ```
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);

  /// **w600** - FontWeight.w600 (Semi Bold) - Alias for `semiBold`
  ///
  /// Example: `TextStyle().w600`
  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);

  /// **Medium** - FontWeight.w500 (Medium)
  ///
  /// Example:
  /// ```dart
  /// TextStyle().medium
  /// Theme.of(context).textTheme.bodySmall?.medium
  /// ```
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);

  /// **w500** - FontWeight.w500 (Medium) - Alias for `medium`
  ///
  /// Example: `TextStyle().w500`
  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);

  /// **Regular** - FontWeight.w400 (Normal/Regular)
  ///
  /// The default font weight, equivalent to FontWeight.normal.
  ///
  /// Example:
  /// ```dart
  /// TextStyle().regular
  /// Theme.of(context).textTheme.bodyLarge?.regular
  /// ```
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);

  /// **w400** - FontWeight.w400 (Normal/Regular) - Alias for `regular`
  ///
  /// Example: `TextStyle().w400`
  TextStyle get w400 => copyWith(fontWeight: FontWeight.w400);

  /// **Light** - FontWeight.w300 (Light)
  ///
  /// Example:
  /// ```dart
  /// TextStyle().light
  /// Theme.of(context).textTheme.caption?.light
  /// ```
  TextStyle get light => copyWith(fontWeight: FontWeight.w300);

  /// **w300** - FontWeight.w300 (Light) - Alias for `light`
  ///
  /// Example: `TextStyle().w300`
  TextStyle get w300 => copyWith(fontWeight: FontWeight.w300);

  /// **Extra-light** - FontWeight.w200 (Extra Light)
  ///
  /// Example:
  /// ```dart
  /// TextStyle().extraLight
  /// Theme.of(context).textTheme.bodySmall?.extraLight
  /// ```
  TextStyle get extraLight => copyWith(fontWeight: FontWeight.w200);

  /// **w200** - FontWeight.w200 (Extra Light) - Alias for `extraLight`
  ///
  /// Example: `TextStyle().w200`
  TextStyle get w200 => copyWith(fontWeight: FontWeight.w200);

  /// **Thin** - FontWeight.w100 (Thin) - The lightest weight
  ///
  /// Example:
  /// ```dart
  /// TextStyle().thin
  /// Theme.of(context).textTheme.bodySmall?.thin
  /// ```
  TextStyle get thin => copyWith(fontWeight: FontWeight.w100);

  /// **w100** - FontWeight.w100 (Thin) - Alias for `thin`
  ///
  /// Example: `TextStyle().w100`
  TextStyle get w100 => copyWith(fontWeight: FontWeight.w100);

  // ═══════════════════════════════════════════════════════════════════════════
  // 🎨 COLOR METHODS - Quick color modifications
  // ═══════════════════════════════════════════════════════════════════════════

  /// Sets the text color
  ///
  /// Example:
  /// ```dart
  /// TextStyle().withColor(Colors.blue)
  /// Theme.of(context).textTheme.bodyLarge?.withColor(Colors.red)
  /// ```
  TextStyle withColor(Color color) => copyWith(color: color);

  // ═══════════════════════════════════════════════════════════════════════════
  // 📏 SIZE METHODS - Font size modifications
  // ═══════════════════════════════════════════════════════════════════════════

  /// Sets the font size
  ///
  /// Example:
  /// ```dart
  /// TextStyle().size(24)
  /// Theme.of(context).textTheme.bodyLarge?.size(18)
  /// ```
  TextStyle size(double size) => copyWith(fontSize: size);

  /// Scales the current font size by a multiplier
  ///
  /// Example:
  /// ```dart
  /// TextStyle(fontSize: 16).scale(1.5)  // Results in 24
  /// Theme.of(context).textTheme.bodyLarge?.scale(0.8)
  /// ```
  TextStyle scale(double multiplier) =>
      copyWith(fontSize: (fontSize ?? 14.0) * multiplier);

  // ═══════════════════════════════════════════════════════════════════════════
  // ✨ STYLE METHODS - Font style and decoration
  // ═══════════════════════════════════════════════════════════════════════════

  /// Makes the text italic
  ///
  /// Example:
  /// ```dart
  /// TextStyle().italic
  /// Theme.of(context).textTheme.bodyLarge?.italic
  /// ```
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);

  /// Adds underline decoration
  ///
  /// Example:
  /// ```dart
  /// TextStyle().underline
  /// TextStyle().bold.underline
  /// ```
  TextStyle get underline => copyWith(decoration: TextDecoration.underline);

  /// Adds line-through (strikethrough) decoration
  ///
  /// Example:
  /// ```dart
  /// TextStyle().lineThrough
  /// TextStyle().withColor(Colors.red).lineThrough
  /// ```
  TextStyle get lineThrough => copyWith(decoration: TextDecoration.lineThrough);

  /// Adds overline decoration
  ///
  /// Example:
  /// ```dart
  /// TextStyle().overline
  /// ```
  TextStyle get overline => copyWith(decoration: TextDecoration.overline);

  // ═══════════════════════════════════════════════════════════════════════════
  // 📐 SPACING METHODS - Letter and word spacing
  // ═══════════════════════════════════════════════════════════════════════════

  /// Sets letter spacing (space between characters)
  ///
  /// Example:
  /// ```dart
  /// TextStyle().letterSpace(1.5)
  /// TextStyle().bold.letterSpace(2.0)
  /// ```
  TextStyle letterSpace(double space) => copyWith(letterSpacing: space);

  /// Sets word spacing (space between words)
  ///
  /// Example:
  /// ```dart
  /// TextStyle().wordSpace(3.0)
  /// TextStyle().size(16).wordSpace(5.0)
  /// ```
  TextStyle wordSpace(double space) => copyWith(wordSpacing: space);

  /// Sets line height multiplier
  ///
  /// Example:
  /// ```dart
  /// TextStyle().lineHeight(1.5)
  /// TextStyle().size(16).lineHeight(2.0)
  /// ```
  TextStyle lineHeight(double height) => copyWith(height: height);

  // ═══════════════════════════════════════════════════════════════════════════
  // 🔤 FONT FAMILY METHODS
  // ═══════════════════════════════════════════════════════════════════════════

  /// Sets the font family
  ///
  /// Example:
  /// ```dart
  /// TextStyle().family('Roboto')
  /// TextStyle().bold.family('Arial')
  /// ```
  TextStyle family(String fontFamily) => copyWith(fontFamily: fontFamily);
}
