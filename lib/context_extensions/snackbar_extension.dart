part of '../awesome_extensions.dart';

extension SnackbarExt on BuildContext {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackbar({
    Key? key,
    Widget? content,
    String? message,
    TextStyle? style,
    TextAlign? textAlign = TextAlign.center,
    Color? backgroundColor,
    double? elevation,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    double? width,
    ShapeBorder? shape,
    HitTestBehavior? hitTestBehavior,
    SnackBarBehavior? behavior = SnackBarBehavior.floating,
    SnackBarAction? action,
    double? actionOverflowThreshold,
    bool? showCloseIcon,
    Color? closeIconColor,
    Duration duration = const Duration(seconds: 3),
    Animation<double>? animation,
    void Function()? onVisible,
    DismissDirection? dismissDirection,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        key: key,
        content: content ??
            Text(
              message ?? '',
              style: style,
              textAlign: textAlign,
            ),
        backgroundColor: backgroundColor,
        elevation: elevation,
        margin: margin,
        padding: padding,
        width: width,
        shape: shape,
        action: action,
        actionOverflowThreshold: actionOverflowThreshold,
        duration: duration,
        animation: animation,
        onVisible: onVisible,
        dismissDirection: dismissDirection,
        behavior: behavior,
        clipBehavior: clipBehavior,
        hitTestBehavior: hitTestBehavior,
        showCloseIcon: showCloseIcon,
        closeIconColor: closeIconColor,
      ),
    );
  }
}
