part of '../awesome_extensions.dart';

extension SizedBoxDoubleExt on double {
  Widget get horzBox {
    return SizedBox(
      height: this,
    );
  }

  Widget get vertBox {
    return SizedBox(
      width: this,
    );
  }

  Widget get box {
    return SizedBox.square(
      dimension: this,
    );
  }
}
