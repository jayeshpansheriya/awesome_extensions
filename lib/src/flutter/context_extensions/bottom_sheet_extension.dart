import 'package:flutter/material.dart' as material;

extension BottomSheetExt on material.BuildContext {
  /// Shows a modal material design bottom sheet.
  Future<T?> showModalBottomSheet<T>({
    required material.WidgetBuilder builder,
    material.Color? backgroundColor,
    double? elevation,
    material.ShapeBorder? shape,
    material.Clip? clipBehavior,
    material.BoxConstraints? constraints,
    material.Color? barrierColor,
    bool isScrollControlled = false,
    bool useRootNavigator = false,
    bool isDismissible = true,
    bool enableDrag = true,
    bool? showDragHandle,
    material.AnimationController? transitionAnimationController,
  }) {
    return material.showModalBottomSheet<T>(
      context: this,
      builder: builder,
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      constraints: constraints,
      barrierColor: barrierColor,
      isScrollControlled: isScrollControlled,
      useRootNavigator: useRootNavigator,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      showDragHandle: showDragHandle,
      transitionAnimationController: transitionAnimationController,
    );
  }

  /// Shows a persistent material design bottom sheet.
  material.PersistentBottomSheetController showBottomSheet({
    required material.WidgetBuilder builder,
    material.Color? backgroundColor,
    double? elevation,
    material.ShapeBorder? shape,
    material.Clip? clipBehavior,
    material.BoxConstraints? constraints,
    bool? enableDrag,
  }) {
    return material.Scaffold.of(this).showBottomSheet(
      builder,
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      constraints: constraints,
      enableDrag: enableDrag,
    );
  }
}
