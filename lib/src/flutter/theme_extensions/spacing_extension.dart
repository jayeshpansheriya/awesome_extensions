import 'dart:ui';

import 'package:flutter/material.dart';

/// A theme extension that defines spacing values for different sizes. Can be used to maintain consistent spacing throughout the app.
/// Overwrite by providing custom values in the constructor.
class SpacingTheme extends ThemeExtension<SpacingTheme> {
  /// Extra small spacing value. Defaults to 4.0.
  final double xs;

  /// Small spacing value. Defaults to 8.0.
  final double sm;

  /// Medium spacing value. Defaults to 16.0.
  final double md;

  /// Large spacing value. Defaults to 32.0.
  final double lg;

  /// Extra large spacing value. Defaults to 64.0.
  final double xl;

  /// The standard spacing theme with default values.
  const SpacingTheme({
    this.xs = 4.0,
    this.sm = 8.0,
    this.md = 16.0,
    this.lg = 32.0,
    this.xl = 64.0,
  });

  /// A more spacious spacing theme. Provides larger default spacing values compared to the standard [SpacingTheme].
  const SpacingTheme.spacious({
    this.xs = 8.0,
    this.sm = 16.0,
    this.md = 32.0,
    this.lg = 64.0,
    this.xl = 128.0,
  });

  /// Creates a custom spacing theme with the given values.
  const SpacingTheme.custom({
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
  });

  @override
  SpacingTheme copyWith({
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
  }) {
    return SpacingTheme(
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
    );
  }

  @override
  SpacingTheme lerp(
    ThemeExtension<SpacingTheme>? other,
    double t,
  ) {
    if (other is! SpacingTheme) return this;
    return SpacingTheme(
      xs: lerpDouble(xs, other.xs, t)!,
      sm: lerpDouble(sm, other.sm, t)!,
      md: lerpDouble(md, other.md, t)!,
      lg: lerpDouble(lg, other.lg, t)!,
      xl: lerpDouble(xl, other.xl, t)!,
    );
  }
}

/// Extension on [BuildContext] to provide easy access to spacing values defined in [SpacingTheme].
extension SpacingExt on BuildContext {
  /// Performs a simple [Theme.of(context).spacingTheme] action and returns the given [SpacingTheme]. Defaults to the standard [SpacingTheme] if none is found.
  SpacingTheme get spacingTheme => Theme.of(this).extension<SpacingTheme>() ?? const SpacingTheme();

  /// Extra small spacing value. Defaults to 4.0.
  double get spacingXs => spacingTheme.xs;

  /// Small spacing value. Defaults to 8.0.
  double get spacingSm => spacingTheme.sm;

  /// Medium spacing value. Defaults to 16.0.
  double get spacingMd => spacingTheme.md;

  /// Large spacing value. Defaults to 32.0.
  double get spacingLg => spacingTheme.lg;

  /// Extra large spacing value. Defaults to 64.0.
  double get spacingXl => spacingTheme.xl;
}
