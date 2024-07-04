part of '../awesome_extensions.dart';

extension ThemeExt on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get color => theme.colorScheme;

  TextTheme get textStyle => theme.textTheme;

  TextStyle? get displayLarge => textStyle.displayLarge;

  TextStyle? get displayMedium => textStyle.displayMedium;

  TextStyle? get displaySmall => textStyle.displaySmall;

  TextStyle? get headlineLarge => textStyle.headlineLarge;

  TextStyle? get headlineMedium => textStyle.headlineMedium;

  TextStyle? get headlineSmall => textStyle.headlineSmall;

  TextStyle? get titleLarge => textStyle.titleLarge;

  TextStyle? get titleMedium => textStyle.titleMedium;

  TextStyle? get titleSmall => textStyle.titleSmall;

  TextStyle? get bodyLarge => textStyle.bodyLarge;

  TextStyle? get bodyMedium => textStyle.bodyMedium;

  TextStyle? get bodySmall => textStyle.bodySmall;

  TextStyle? get labelLarge => textStyle.labelLarge;

  TextStyle? get labelMedium => textStyle.labelMedium;

  TextStyle? get labelSmall => textStyle.labelSmall;

  bool get isDarkMode => theme.brightness == Brightness.dark;

  bool get isLightMode => theme.brightness == Brightness.light;

  Brightness get colorBrightness => color.brightness;

  TextTheme get textTheme => theme.textTheme;

  TextTheme get primaryTextTheme => theme.primaryTextTheme;

  Color? get primaryColor => color.primary;

  Color? get primaryContainerColor => color.primaryContainer;

  Color? get primaryFixedColor => color.primaryFixed;

  Color? get primaryFixedDimColor => color.primaryFixedDim;

  Color? get onPrimaryColor => color.onPrimary;

  Color? get onPrimaryContainerColor => color.onPrimaryContainer;

  Color? get onPrimaryFixedColor => color.onPrimaryFixed;

  Color? get onPrimaryFixedVariantColor => color.onPrimaryFixedVariant;

  Color? get inversePrimaryColor => color.inversePrimary;

  Color? get secondaryColor => color.secondary;

  Color? get secondaryContainerColor => color.secondaryContainer;

  Color? get secondaryFixedColor => color.secondaryFixed;

  Color? get secondaryFixedDimColor => color.secondaryFixedDim;

  Color? get onSecondaryColor => color.onSecondary;

  Color? get onSecondaryContainerColor => color.onSecondaryContainer;

  Color? get onSecondaryFixedColor => color.onSecondaryFixed;

  Color? get onSecondaryFixedVariantColor => color.onSecondaryFixedVariant;

  Color? get tertiaryColor => color.tertiary;

  Color? get tertiaryContainerColor => color.tertiaryContainer;

  Color? get tertiaryFixedColor => color.tertiaryFixed;

  Color? get tertiaryFixedDimColor => color.tertiaryFixedDim;

  Color? get onTertiaryColor => color.onTertiary;

  Color? get onTertiaryContainerColor => color.onTertiaryContainer;

  Color? get onTertiaryFixedColor => color.onTertiaryFixed;

  Color? get onTertiaryFixedVariantColor => color.onTertiaryFixedVariant;

  Color? get surfaceColor => color.surface;

  Color? get surfaceBrightColor => color.surfaceBright;

  Color? get surfaceContainerColor => color.surfaceContainer;

  Color? get surfaceContainerHighColor => color.surfaceContainerHigh;

  Color? get surfaceContainerHighestColor => color.surfaceContainerHighest;

  Color? get surfaceContainerLowColor => color.surfaceContainerLow;

  Color? get surfaceContainerLowestColor => color.surfaceContainerLowest;

  Color? get surfaceDimColor => color.surfaceDim;

  Color? get surfaceTintColor => color.surfaceTint;

  Color? get onSurfaceolor => color.onSurface;

  Color? get onSurfaceVariantColor => color.onSurfaceVariant;

  Color? get inverseSurfaceColor => color.inverseSurface;

  Color? get onInverseSurfaceColor => color.onInverseSurface;

  Color? get errorColor => color.error;

  Color? get errorContainerColor => color.errorContainer;

  Color? get onErrorColor => color.onError;

  Color? get onErrorContainerColor => color.onErrorContainer;

  Color? get outlineColor => color.outline;

  Color? get outlineVariantColor => color.outlineVariant;

  Color? get scrimColor => color.scrim;

  Color? get shadowColor => color.shadow;
}
