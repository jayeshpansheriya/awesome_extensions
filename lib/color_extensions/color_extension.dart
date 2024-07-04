part of '../awesome_extensions.dart';

extension ColorExt on Color {
  int get alphaValue {
    return alpha;
  }

  int get blueValue {
    return blue;
  }

  double get brightness {
    return (red + green + blue) / 3 / 255;
  }

  int get greenValue {
    return green;
  }

  String get hex {
    String hexString = value.toRadixString(16);
    return '#${hexString.substring(2)}';
  }

  int get redValue {
    return red;
  }

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

  Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

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

  Color withAlpha(int alpha) {
    assert(0 <= alpha && alpha <= 255);
    return Color.fromARGB(alpha, red, green, blue);
  }

  Color withBlue(int blue) {
    assert(0 <= blue && blue <= 255);
    return Color.fromARGB(alpha, red, green, blue);
  }

  Color withBrightness(double brightness) {
    assert(0 <= brightness && brightness <= 1);
    final newBrightness = brightness * 255;
    return Color.fromARGB(alpha, newBrightness.toInt(), newBrightness.toInt(), newBrightness.toInt());
  }

  Color withGreen(int green) {
    assert(0 <= green && green <= 255);
    return Color.fromARGB(alpha, red, green, blue);
  }

  Color withRed(int red) {
    assert(0 <= red && red <= 255);
    return Color.fromARGB(alpha, red, green, blue);
  }
}
