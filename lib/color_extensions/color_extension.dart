part of '../awesome_extensions.dart';

/// Extension on the [Color] class to provide additional functionality.
extension ColorExtension on Color {
  /// Returns the alpha component of the color.
  int get alphaValue {
    return alpha;
  }

  /// Returns the blue component of the color.
  int get blueValue {
    return blue;
  }

  /// Returns the brightness of the color.
  ///
  /// The brightness is calculated as the average of the red, green, and blue components.
  double get brightness {
    return (red + green + blue) / 3 / 255;
  }

  /// Returns the green component of the color.
  int get greenValue {
    return green;
  }

  /// Returns the hex value of the color.
  String get hex {
    String hexString = value.toRadixString(16);
    return '#${hexString.substring(2)}';
  }

  /// Returns the red component of the color.
  int get redValue {
    return red;
  }

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

  /// Hex Color from a String to a Color object.

  Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
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

  /// Returns a new [Color] object with the specified alpha value.
  ///
  /// The [alpha] parameter specifies the new alpha value, which should be between 0 and 255.
  Color withAlpha(int alpha) {
    assert(0 <= alpha && alpha <= 255);
    return Color.fromARGB(alpha, red, green, blue);
  }

  /// Returns a new [Color] object with the specified blue value.
  ///
  /// The [blue] parameter specifies the new blue value, which should be between 0 and 255.
  Color withBlue(int blue) {
    assert(0 <= blue && blue <= 255);
    return Color.fromARGB(alpha, red, green, blue);
  }

  /// Returns a new [Color] object with the specified brightness value.
  ///
  /// The [brightness] parameter specifies the new brightness value, which should be between 0 and 1.
  Color withBrightness(double brightness) {
    assert(0 <= brightness && brightness <= 1);
    final newBrightness = brightness * 255;
    return Color.fromARGB(alpha, newBrightness.toInt(), newBrightness.toInt(),
        newBrightness.toInt());
  }

  /// Returns a new [Color] object with the specified green value.
  ///
  /// The [green] parameter specifies the new green value, which should be between 0 and 255.
  Color withGreen(int green) {
    assert(0 <= green && green <= 255);
    return Color.fromARGB(alpha, red, green, blue);
  }

  /// Returns a new [Color] object with the specified red value.
  ///
  /// The [red] parameter specifies the new red value, which should be between 0 and 255.
  Color withRed(int red) {
    assert(0 <= red && red <= 255);
    return Color.fromARGB(alpha, red, green, blue);
  }
}
