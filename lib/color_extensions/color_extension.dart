part of '../awesome_extensions.dart';

/// Extension on the [Color] class to provide additional functionality.
extension ColorExtension on Color {
  /// Darkens the color by a specified percentage.
  ///
  /// The [percent] parameter specifies the percentage by which the color should be darkened.
  /// The value of [percent] should be between 0 and 100.
  ///
  /// Returns a new [Color] object that represents the darkened color.
  Color darken([int percent = 10]) {
    assert(0 <= percent && percent <= 100);
    final f = 1 - percent / 100;
    return Color.fromARGB(
      alpha,
      (red * f).round(),
      (green * f).round(),
      (blue * f).round(),
    );
  }

  /// Lightens the color by a specified percentage.
  ///
  /// The [percent] parameter specifies the percentage by which the color should be lightened.
  /// The value of [percent] should be between 0 and 100.
  ///
  /// Returns a new [Color] object that represents the lightened color.
  Color lighten([int percent = 10]) {
    assert(0 <= percent && percent <= 100);
    final p = percent / 100;
    return Color.fromARGB(
      alpha,
      red + ((255 - red) * p).round(),
      green + ((255 - green) * p).round(),
      blue + ((255 - blue) * p).round(),
    );
  }
}
