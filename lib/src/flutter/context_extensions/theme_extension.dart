import 'package:flutter/material.dart';

extension ThemeExt on BuildContext {
  //  THEMES

  /// performs a simple [Theme.of(context).appBarTheme] action and returns given [appBarTheme]
  AppBarThemeData get appBarTheme => Theme.of(this).appBarTheme;

  /// performs a simple [Theme.of(context).backgroundColor] action and returns given [backgroundColor]
  Color get backgroundColor => Theme.of(this).colorScheme.surface;

  /// performs a simple [Theme.of(context).backgroundColor] action and returns given [backgroundColor]
  Color get surface => Theme.of(this).colorScheme.surface;

  /// Middle size of the body styles.
  ///
  /// Body styles are used for longer passages of text.
  ///
  /// The default text style for [Material].
  TextStyle? get bodyLarge => textTheme.bodyLarge;

  /// Middle size of the body styles.
  ///
  /// Body styles are used for longer passages of text.
  ///
  /// The default text style for [Material].
  TextStyle? get bodyMedium => textTheme.bodyMedium;

  /// Smallest of the body styles.
  ///
  /// Body styles are used for longer passages of text.
  TextStyle? get bodySmall => textTheme.bodySmall;

  /// performs a simple [Theme.of(context).bottomAppBarTheme] action and returns given [bottomAppBarTheme]
  BottomAppBarThemeData get bottomAppBarTheme =>
      Theme.of(this).bottomAppBarTheme;

  // COLOR

  /// performs a simple [Theme.of(context).bottomSheetTheme] action and returns given [bottomSheetTheme]
  BottomSheetThemeData get bottomSheetTheme => Theme.of(this).bottomSheetTheme;

  /// Largest of the display styles.
  ///
  /// As the largest text on the screen, display styles are reserved for short,
  /// important text or numerals. They work best on large screens.
  TextStyle? get displayLarge => textTheme.displayLarge;

  /// Middle size of the display styles.
  ///
  /// As the largest text on the screen, display styles are reserved for short,
  /// important text or numerals. They work best on large screens.
  TextStyle? get displayMedium => textTheme.displayMedium;

  /// Smallest of the display styles.
  ///
  /// As the largest text on the screen, display styles are reserved for short,
  /// important text or numerals. They work best on large screens.
  TextStyle? get displaySmall => textTheme.displaySmall;

  /// The color of [Divider]s and [PopupMenuDivider]s, also used
  /// between [ListTile]s, between rows in [DataTable]s, and so forth.
  ///
  /// To create an appropriate [BorderSide] that uses this color, consider
  /// [Divider.createBorderSide].
  Color get dividerColor => Theme.of(this).dividerColor;

  /// The focus color used indicate that a component has the input focus.
  Color get focusColor => Theme.of(this).focusColor;

  /// Largest of the headline styles.
  ///
  /// Headline styles are smaller than display styles. They're best-suited for
  /// short, high-emphasis text on smaller screens.
  TextStyle? get headlineLarge => textTheme.headlineLarge;

  /// Middle size of the headline styles.
  ///
  /// Headline styles are smaller than display styles. They're best-suited for
  /// short, high-emphasis text on smaller screens.
  TextStyle? get headlineMedium => textTheme.headlineMedium;

  // // TYPOGRAPHY 2018

  // /// performs a simple [textTheme.headline1] action and returns given [headline1]
  // TextStyle? get headline1 => textTheme.displayLarge;

  // /// performs a simple [textTheme.headline2] action and returns given [headline2]
  // TextStyle? get headline2 => textTheme.displayMedium;

  // /// performs a simple [textTheme.headline3] action and returns given [headline3]
  // TextStyle? get headline3 => textTheme.displaySmall;

  // /// performs a simple [textTheme.headline4] action and returns given [headline4]
  // TextStyle? get headline4 => textTheme.headlineMedium;

  // /// performs a simple [textTheme.headline5] action and returns given [headline5]
  // TextStyle? get headline5 => textTheme.headlineSmall;

  // /// performs a simple [textTheme.headline6] action and returns given [headline6]
  // TextStyle? get headline6 => textTheme.titleLarge;

  // /// performs a simple [textTheme.subtitle1] action and returns given [subtitle1]
  // TextStyle? get subtitle1 => textTheme.titleMedium;

  // /// performs a simple [textTheme.subtitle2] action and returns given [subtitle2]
  // TextStyle? get subtitle2 => textTheme.titleSmall;

  // /// performs a simple [textTheme.bodyText1] action and returns given [bodyText1]
  // TextStyle? get bodyText1 => textTheme.bodyLarge;

  // /// performs a simple [textTheme.bodyText2] action and returns given [bodyText2]
  // TextStyle? get bodyText2 => textTheme.bodyMedium;

  // /// performs a simple [textTheme.caption] action and returns given [caption]
  // TextStyle? get caption => textTheme.bodySmall;

  // /// performs a simple [textTheme.button] action and returns given [button]
  // TextStyle? get button => textTheme.labelLarge;

  // /// performs a simple [textTheme.overline] action and returns given [overline]
  // TextStyle? get overline => textTheme.labelSmall;

  // TYPOGRAPHY 2021

  /// Smallest of the headline styles.
  ///
  /// Headline styles are smaller than display styles. They're best-suited for
  /// short, high-emphasis text on smaller screens.
  TextStyle? get headlineSmall => textTheme.headlineSmall;

  /// The hover color used to indicate when a pointer is hovering over a
  /// component.
  Color get hoverColor => Theme.of(this).hoverColor;

  /// Largest of the label styles.
  ///
  /// Label styles are smaller, utilitarian styles, used for areas of the UI
  /// such as text inside of components or very small supporting text in the
  /// content body, like captions.
  ///
  /// Used for text on [ElevatedButton], [TextButton] and [OutlinedButton].
  TextStyle? get labelLarge => textTheme.labelLarge;

  /// Middle size of the label styles.
  ///
  /// Label styles are smaller, utilitarian styles, used for areas of the UI
  /// such as text inside of components or very small supporting text in the
  /// content body, like captions.
  TextStyle? get labelMedium => textTheme.labelMedium;

  /// Smallest of the label styles.
  ///
  /// Label styles are smaller, utilitarian styles, used for areas of the UI
  /// such as text inside of components or very small supporting text in the
  /// content body, like captions
  TextStyle? get labelSmall => textTheme.labelSmall;

  /// performs a simple [Theme.of(context).primaryColor] action and returns given [primaryColor]
  Color get primaryColor => Theme.of(this).primaryColor;

  /// A darker version of the [primaryColor].
  Color get primaryColorDark => Theme.of(this).primaryColorDark;

  /// A lighter version of the [primaryColor].
  Color get primaryColorLight => Theme.of(this).primaryColorLight;

  /// performs a simple [Theme.of(context).primaryTextTheme] action and returns given [primaryTextTheme]
  TextTheme get primaryTextTheme => Theme.of(this).primaryTextTheme;

  /// The default color of the [Material] that underlies the [Scaffold]. The
  /// background color for a typical material app or a page within the app.
  Color get scaffoldBackgroundColor => Theme.of(this).scaffoldBackgroundColor;

  TextTheme get textTheme => Theme.of(this).textTheme;

  /// performs a simple [Theme.of(context)] action and returns given [result]
  ThemeData get theme => Theme.of(this);

  /// Largest of the title styles.
  ///
  /// Titles are smaller than headline styles and should be used for shorter,
  /// medium-emphasis text.
  TextStyle? get titleLarge => textTheme.titleLarge;

  /// Middle size of the title styles.
  ///
  /// Titles are smaller than headline styles and should be used for shorter,
  /// medium-emphasis text.
  TextStyle? get titleMedium => textTheme.titleMedium;

  /// Smallest of the title styles.
  ///
  /// Titles are smaller than headline styles and should be used for shorter,
  /// medium-emphasis text.
  TextStyle? get titleSmall => textTheme.titleSmall;

  /// Checks if the current theme is dark.
  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  /// Checks if the current theme is light.
  bool get isLight => Theme.of(this).brightness == Brightness.light;
}
