part of '../awesome_extensions.dart';

extension AlignExt on Widget {
  Align alignTop({Key? key, double? heightFactor, double? widthFactor}) {
    return Align(
      key: key,
      alignment: Alignment.topCenter,
      heightFactor: heightFactor,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Align alignTopLeft({Key? key, double? heightFactor, double? widthFactor}) {
    return Align(
      key: key,
      alignment: Alignment.topLeft,
      heightFactor: heightFactor,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Align alignTopRight({Key? key, double? heightFactor, double? widthFactor}) {
    return Align(
      key: key,
      alignment: Alignment.topRight,
      heightFactor: heightFactor,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Align align({Key? key, double? heightFactor, double? widthFactor}) {
    return Align(
      key: key,
      alignment: Alignment.center,
      heightFactor: heightFactor,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Align alignLeft({Key? key, double? heightFactor, double? widthFactor}) {
    return Align(
      key: key,
      alignment: Alignment.centerLeft,
      heightFactor: heightFactor,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Align alignRight({Key? key, double? heightFactor, double? widthFactor}) {
    return Align(
      key: key,
      alignment: Alignment.centerRight,
      heightFactor: heightFactor,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Align alignBottom({Key? key, double? heightFactor, double? widthFactor}) {
    return Align(
      key: key,
      alignment: Alignment.bottomCenter,
      heightFactor: heightFactor,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Align alignBottomLeft({Key? key, double? heightFactor, double? widthFactor}) {
    return Align(
      key: key,
      alignment: Alignment.bottomLeft,
      heightFactor: heightFactor,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Align alignBottomRight({Key? key, double? heightFactor, double? widthFactor}) {
    return Align(
      key: key,
      alignment: Alignment.bottomRight,
      heightFactor: heightFactor,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Align alignLERP(Alignment a, Alignment b, double t, {Key? key, double? heightFactor, double? widthFactor}) {
    return Align(
      key: key,
      alignment: Alignment.lerp(a, b, t)!,
      heightFactor: heightFactor,
      widthFactor: widthFactor,
      child: this,
    );
  }

  Align alignXY(double x, double y, {Key? key, double? heightFactor, double? widthFactor}) {
    return Align(
      key: key,
      alignment: Alignment(x, y),
      heightFactor: heightFactor,
      widthFactor: widthFactor,
      child: this,
    );
  }
}
