part of 'awesome_extensions.dart';

extension SizeBoxExtension on double {
  Widget get widthSizedBox => SizedBox(width: this);

  Widget get heightSizedBox => SizedBox(height: this);
}
