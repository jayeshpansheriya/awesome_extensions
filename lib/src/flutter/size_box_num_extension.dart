import 'package:flutter/widgets.dart';

extension SizeBoxNumExtension on num {
  Widget get widthBox => SizedBox(width: double.tryParse(toString()));

  Widget get heightBox => SizedBox(height: double.tryParse(toString()));
}
