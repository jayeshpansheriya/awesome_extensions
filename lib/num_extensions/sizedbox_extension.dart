part of '../awesome_extensions.dart';

extension SizedBoxNumExt on num {
  Widget get horzBox {
    return SizedBox(
      height: double.tryParse(toString()),
    );
  }

  Widget get vertBox {
    return SizedBox(
      width: double.tryParse(toString()),
    );
  }

  Widget get box {
    return SizedBox.square(
      dimension: double.tryParse(toString()),
    );
  }
}
