import 'package:flutter/widgets.dart';

extension FocusExt on BuildContext {
  /// Unfocuses the current focused widget (hides soft keyboard).
  void unfocus() {
    FocusScope.of(this).unfocus();
  }

  /// Requests focus for the given [FocusNode].
  void requestFocus(FocusNode node) {
    FocusScope.of(this).requestFocus(node);
  }

  /// Hides soft keyboard by unfocusing primary focus.
  void hideKeyboard() {
    final currentFocus = FocusScope.of(this);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}
