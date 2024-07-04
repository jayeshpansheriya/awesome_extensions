part of '../awesome_extensions.dart';

extension DialogExt on BuildContext {
  Future<T?> dialog<T>({
    required Widget child,
    bool barrierDismissible = true,
    Color? barrierColor,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
    TraversalEdgeBehavior? traversalEdgeBehavior,
  }) {
    return showDialog<T>(
      context: this,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      anchorPoint: anchorPoint,
      traversalEdgeBehavior: traversalEdgeBehavior,
      builder: (context) => child,
    );
  }

  Future<T?> loading<T>({
    Key? key,
    Widget? loadingWidget,
  }) {
    return dialog(
      child: Center(
        key: key,
        child: loadingWidget ?? const CircularProgressIndicator(),
      ),
    );
  }
}
