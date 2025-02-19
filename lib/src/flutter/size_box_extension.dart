import 'package:flutter/material.dart';

extension SizeBoxExtension on double {
  Widget get heightBox => SizedBox(height: this);

  Widget get widthBox => SizedBox(width: this);
}
