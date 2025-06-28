import 'package:flutter/material.dart';

extension SnackbarExt on BuildContext {
  void showSnackBar({
    required String message,
    Duration duration = const Duration(seconds: 3),
    SnackBarAction? action,
    Color? backgroundColor,
    double? elevation,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    ShapeBorder? shape,
    bool isDismissible = true,
    bool showIcon = false,
    IconData? icon,
    Color? iconColor,
    double? iconSize,
    TextStyle? textStyle,
    SnackBarBehavior behavior = SnackBarBehavior.floating,
    DismissDirection dismissDirection = DismissDirection.horizontal,
    double? actionOverflowThreshold,
    void Function()? onVisible,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            if (showIcon) Icon(icon, color: iconColor, size: iconSize),
            const SizedBox(width: 10),
            Expanded(child: Text(message, style: textStyle)),
          ],
        ),
        duration: duration,
        action: action,
        backgroundColor: backgroundColor,
        elevation: elevation,
        margin: margin,
        padding: padding,
        shape: shape,
        behavior: behavior,
        onVisible: onVisible,
        dismissDirection: dismissDirection,
        actionOverflowThreshold: actionOverflowThreshold,
      ),
    );
  }
}
