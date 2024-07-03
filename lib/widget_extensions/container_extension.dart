part of '../awesome_extensions.dart';

extension ContainerExt on Container {
  Container radius({Key? key, required Color backgroundColor, double? radius}) {
    return Container(
      key: key,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(
          Radius.circular(radius ?? 25)
        ),
      ),
      child: this,
    );
  }

  Container shadow({
    Color color = Colors.grey,
    double blurRadius = 20.0,
    double spreadRadius = 1.0,
    Offset offset = const Offset(10.0, 10.0),
  }) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: color, blurRadius: blurRadius, spreadRadius: spreadRadius, offset: offset),
        ],
      ),
      child: this,
    );
  }
}
