import 'package:flutter/material.dart';

extension CenterExtension on Widget {
  Center toCenter() {
    return Center(
      child: this,
    );
  }
}
