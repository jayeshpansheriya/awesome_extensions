import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:awesome_extensions/awesome_extensions_flutter.dart';

extension DialogExt on BuildContext {
  @Deprecated('use showAdaptiveAlertDialog')
  void showAlertDialog({
    required String title,
    required String message,
    List<String>? positiveButtonsTitle,
    String? cancelButtonTitle,
    Function(int)? onDone,
    Color? positiveTitleColor,
    Color? cancelTitleColor,
    double? fontSize,
    bool barrierDismissible = true,
  }) {
    // Check the platform
    if (MyPlatform.isIOS) {
      // show cuperino dialog
      _showIOSDialog(
        this,
        title,
        message,
        positiveButtonsTitle,
        cancelButtonTitle,
        onDone,
        positiveTitleColor,
        cancelTitleColor,
        fontSize,
        barrierDismissible,
      );
    } else {
      // shoe material dialog
      _showAndroidDialog(
        this,
        title,
        message,
        positiveButtonsTitle,
        cancelButtonTitle,
        onDone,
        positiveTitleColor,
        cancelTitleColor,
        fontSize,
        barrierDismissible,
      );
    }
  }

  void _showAndroidDialog(
      BuildContext context,
      String title,
      String message,
      List<String>? buttons,
      String? cancelButton,
      Function(int)? onDone,
      Color? positiveTitleColor,
      Color? cancelTitleColor,
      double? fontSize,
      bool barrierDismissible) {
    // flutter defined function
    List<Widget> arrWidget = [];

    if (cancelButton != null) {
      TextButton action = TextButton(
        style: TextButton.styleFrom(
          foregroundColor: cancelTitleColor,
          textStyle: TextStyle(
            fontSize: fontSize,
          ),
        ),
        child: Text(
          cancelButton,
        ),
        onPressed: () {
          context.pop();
        },
      );
      arrWidget.add(action);
    }

    if (buttons != null) {
      for (String buttonTitle in buttons) {
        TextButton action = TextButton(
          style: TextButton.styleFrom(
            foregroundColor: positiveTitleColor,
            textStyle: TextStyle(
              fontSize: fontSize,
            ),
          ),
          child: Text(
            buttonTitle,
          ),
          onPressed: () {
            int index = buttons.indexOf(buttonTitle);
            if (onDone != null) {
              onDone(index);
            }
            context.pop();
          },
        );
        arrWidget.add(action);
      }
    }

    showDialog(
        barrierDismissible: barrierDismissible,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            title: Text(title),
            content: Text(message),
            actions: arrWidget,
          );
        });
  }

  void _showIOSDialog(
      BuildContext context,
      String title,
      String message,
      List<String>? buttons,
      String? cancelButton,
      Function(int)? onDone,
      Color? positiveTitleColor,
      Color? cancelTitleColor,
      double? fontSize,
      bool barrierDismissible) {
    List<Widget> arrWidget = [];

    if (cancelButton != null) {
      CupertinoDialogAction action = CupertinoDialogAction(
        isDefaultAction: true,
        textStyle: TextStyle(color: cancelTitleColor, fontSize: fontSize),
        onPressed: () {
          context.pop();
        },
        child: Text(cancelButton),
      );
      arrWidget.add(action);
    }

    if (buttons != null) {
      for (String buttonTitle in buttons) {
        CupertinoDialogAction action = CupertinoDialogAction(
          isDefaultAction: true,
          textStyle: TextStyle(color: positiveTitleColor, fontSize: fontSize),
          onPressed: () {
            int index = buttons.indexOf(buttonTitle);
            if (onDone != null) {
              onDone(index);
            }
            context.pop();
          },
          child: Text(buttonTitle),
        );
        arrWidget.add(action);
      }
    }

    showDialog(
        barrierDismissible: barrierDismissible,
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text(title),
            content: Text(message),
            actions: arrWidget,
          );
        });
  }

  Future<T?> showAdaptiveAlertDialog<T>({
    required String title,
    required String message,
    bool? barrierDismissible,
    Color? barrierColor,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
    TraversalEdgeBehavior? traversalEdgeBehavior,
    double? fontSize,
    String? cancelButtonText,
    Color? cancelButtonTextColor,
    Function()? onCancelPress,
    List<String>? positiveButtonTexts,
    Color? positiveTextColor,
    Function(int index)? onPositivePress,
  }) =>
      showAdaptiveDialog(
        context: this,
        barrierDismissible: barrierDismissible,
        barrierColor: barrierColor,
        barrierLabel: barrierLabel,
        useSafeArea: useSafeArea,
        useRootNavigator: useRootNavigator,
        routeSettings: routeSettings,
        anchorPoint: anchorPoint,
        traversalEdgeBehavior: traversalEdgeBehavior,
        builder: (context) {
          List<Widget> actions = [];

          if (cancelButtonText != null) {
            actions.add(
              adaptiveAction(
                context: context,
                onPressed: () {
                  if (onCancelPress != null) {
                    onCancelPress.call();
                  } else {
                    context.pop();
                  }
                },
                child: Text(
                  cancelButtonText,
                  style: TextStyle(
                    color: cancelButtonTextColor,
                    fontSize: fontSize,
                  ),
                ),
              ),
            );
          }

          if (positiveButtonTexts != null) {
            for (String buttonText in positiveButtonTexts) {
              actions.add(
                adaptiveAction(
                  context: context,
                  onPressed: () {
                    int index = positiveButtonTexts.indexOf(buttonText);
                    context.pop();
                    if (onPositivePress != null) {
                      onPositivePress.call(index);
                    }
                  },
                  child: Text(
                    buttonText,
                    style: TextStyle(
                      color: positiveTextColor,
                      fontSize: fontSize,
                    ),
                  ),
                ),
              );
            }
          }

          return AlertDialog.adaptive(
            title: Text(title),
            content: Text(message),
            actions: actions,
          );
        },
      );

  Widget adaptiveAction({
    required BuildContext context,
    required VoidCallback onPressed,
    required Widget child,
  }) {
    switch (theme.platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return TextButton(onPressed: onPressed, child: child);
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return CupertinoDialogAction(onPressed: onPressed, child: child);
    }
  }
}
