import 'package:flutter/material.dart';

extension ColorSchemeExt on BuildContext {
  /// performs a simple [Theme.of(context).colorScheme] action and returns given [colorScheme]
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  // PRIMARY
  /// Shorthand for `Theme.of(context).colorScheme.primary`.
  Color get primary => colorScheme.primary;

  /// Shorthand for `Theme.of(context).colorScheme.onPrimary`.
  Color get onPrimary => colorScheme.onPrimary;

  /// Shorthand for `Theme.of(context).colorScheme.primaryContainer`.
  Color get primaryContainer => colorScheme.primaryContainer;

  /// Shorthand for `Theme.of(context).colorScheme.onPrimaryContainer`.
  Color get onPrimaryContainer => colorScheme.onPrimaryContainer;

  // SECONDARY
  /// Shorthand for `Theme.of(context).colorScheme.secondary`.
  Color get secondary => colorScheme.secondary;

  /// Shorthand for `Theme.of(context).colorScheme.onSecondary`.
  Color get onSecondary => colorScheme.onSecondary;

  /// Shorthand for `Theme.of(context).colorScheme.secondaryContainer`.
  Color get secondaryContainer => colorScheme.secondaryContainer;

  /// Shorthand for `Theme.of(context).colorScheme.onSecondaryContainer`.
  Color get onSecondaryContainer => colorScheme.onSecondaryContainer;

  // TERTIARY
  /// Shorthand for `Theme.of(context).colorScheme.tertiary`.
  Color get tertiary => colorScheme.tertiary;

  /// Shorthand for `Theme.of(context).colorScheme.onTertiary`.
  Color get onTertiary => colorScheme.onTertiary;

  /// Shorthand for `Theme.of(context).colorScheme.tertiaryContainer`.
  Color get tertiaryContainer => colorScheme.tertiaryContainer;

  /// Shorthand for `Theme.of(context).colorScheme.onTertiaryContainer`.
  Color get onTertiaryContainer => colorScheme.onTertiaryContainer;

  // ERROR
  /// Shorthand for `Theme.of(context).colorScheme.error`.
  Color get error => colorScheme.error;

  /// Shorthand for `Theme.of(context).colorScheme.onError`.
  Color get onError => colorScheme.onError;

  /// Shorthand for `Theme.of(context).colorScheme.errorContainer`.
  Color get errorContainer => colorScheme.errorContainer;

  /// Shorthand for `Theme.of(context).colorScheme.onErrorContainer`.
  Color get onErrorContainer => colorScheme.onErrorContainer;

  // SURFACE FAMILY
  /// Shorthand for `Theme.of(context).colorScheme.surface`.
  Color get surface => colorScheme.surface;

  /// Shorthand for `Theme.of(context).colorScheme.onSurface`.
  Color get onSurface => colorScheme.onSurface;

  /// DEPRECATED: `ColorScheme.surfaceVariant` is deprecated in Flutter.
  /// Returns `Theme.of(context).colorScheme.surfaceContainerHighest` instead.
  Color get surfaceVariant => colorScheme.surfaceContainerHighest;

  /// Shorthand for `Theme.of(context).colorScheme.onSurfaceVariant`.
  Color get onSurfaceVariant => colorScheme.onSurfaceVariant;

  /// Shorthand for `Theme.of(context).colorScheme.inverseSurface`.
  Color get inverseSurface => colorScheme.inverseSurface;

  /// Shorthand for `Theme.of(context).colorScheme.onInverseSurface`.
  Color get onInverseSurface => colorScheme.onInverseSurface;

  /// Shorthand for `Theme.of(context).colorScheme.inversePrimary`.
  Color get inversePrimary => colorScheme.inversePrimary;

  /// Shorthand for `Theme.of(context).colorScheme.surfaceTint`.
  Color get surfaceTint => colorScheme.surfaceTint;

  /// Shorthand for `Theme.of(context).colorScheme.shadow`.
  Color get shadow => colorScheme.shadow;

  /// Shorthand for `Theme.of(context).colorScheme.scrim`.
  Color get scrim => colorScheme.scrim;

  // OUTLINE
  /// Shorthand for `Theme.of(context).colorScheme.outline`.
  Color get outline => colorScheme.outline;

  /// Shorthand for `Theme.of(context).colorScheme.outlineVariant`.
  Color get outlineVariant => colorScheme.outlineVariant;

  // SURFACE CONTAINERS & BRIGHTNESS VARIANTS
  /// Shorthand for `Theme.of(context).colorScheme.surfaceDim`.
  Color get surfaceDim => colorScheme.surfaceDim;

  /// Shorthand for `Theme.of(context).colorScheme.surfaceBright`.
  Color get surfaceBright => colorScheme.surfaceBright;

  /// Shorthand for `Theme.of(context).colorScheme.surfaceContainerLowest`.
  Color get surfaceContainerLowest => colorScheme.surfaceContainerLowest;

  /// Shorthand for `Theme.of(context).colorScheme.surfaceContainerLow`.
  Color get surfaceContainerLow => colorScheme.surfaceContainerLow;

  /// Shorthand for `Theme.of(context).colorScheme.surfaceContainer`.
  Color get surfaceContainer => colorScheme.surfaceContainer;

  /// Shorthand for `Theme.of(context).colorScheme.surfaceContainerHigh`.
  Color get surfaceContainerHigh => colorScheme.surfaceContainerHigh;

  /// Shorthand for `Theme.of(context).colorScheme.surfaceContainerHighest`.
  Color get surfaceContainerHighest => colorScheme.surfaceContainerHighest;

  // FIXED COLOR FAMILIES (Material 3 dynamic palettes)
  /// Shorthand for `Theme.of(context).colorScheme.primaryFixed`.
  Color get primaryFixed => colorScheme.primaryFixed;

  /// Shorthand for `Theme.of(context).colorScheme.primaryFixedDim`.
  Color get primaryFixedDim => colorScheme.primaryFixedDim;

  /// Shorthand for `Theme.of(context).colorScheme.onPrimaryFixed`.
  Color get onPrimaryFixed => colorScheme.onPrimaryFixed;

  /// Shorthand for `Theme.of(context).colorScheme.onPrimaryFixedVariant`.
  Color get onPrimaryFixedVariant => colorScheme.onPrimaryFixedVariant;

  /// Shorthand for `Theme.of(context).colorScheme.secondaryFixed`.
  Color get secondaryFixed => colorScheme.secondaryFixed;

  /// Shorthand for `Theme.of(context).colorScheme.secondaryFixedDim`.
  Color get secondaryFixedDim => colorScheme.secondaryFixedDim;

  /// Shorthand for `Theme.of(context).colorScheme.onSecondaryFixed`.
  Color get onSecondaryFixed => colorScheme.onSecondaryFixed;

  /// Shorthand for `Theme.of(context).colorScheme.onSecondaryFixedVariant`.
  Color get onSecondaryFixedVariant => colorScheme.onSecondaryFixedVariant;

  /// Shorthand for `Theme.of(context).colorScheme.tertiaryFixed`.
  Color get tertiaryFixed => colorScheme.tertiaryFixed;

  /// Shorthand for `Theme.of(context).colorScheme.tertiaryFixedDim`.
  Color get tertiaryFixedDim => colorScheme.tertiaryFixedDim;

  /// Shorthand for `Theme.of(context).colorScheme.onTertiaryFixed`.
  Color get onTertiaryFixed => colorScheme.onTertiaryFixed;

  /// Shorthand for `Theme.of(context).colorScheme.onTertiaryFixedVariant`.
  Color get onTertiaryFixedVariant => colorScheme.onTertiaryFixedVariant;
}
