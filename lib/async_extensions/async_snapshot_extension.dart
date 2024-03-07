part of '../awesome_extensions.dart';

/// An extension on [AsyncSnapshot] providing a [when] method.
extension AsyncSnapshotExt<T> on AsyncSnapshot<T> {
  /// Perform actions conditionally based on the state of the [AsyncSnapshot].
  ///
  /// All cases are required, which allows returning a non-nullable value.
  ///
  /// The [data] callback is called once the [AsyncSnapshot] has data.
  /// The [isComplete] parameter wiil be true if the connection/stream is closed.
  ///
  /// The [error] callback is called when the [AsyncSnapshot] has an error.
  ///
  /// The [loading] callback is called when the [AsyncSnapshot] is still waiting for data.
  ///
  ///
  /// Example:
  /// ```dart
  /// StreamBuilder(
  ///   stream: incomingMessagesStream,
  ///   builder: (context, snapshot) {
  ///     snapshot.when(
  ///       data: (data, isComplete) {
  ///         return Column(
  ///           children: [
  ///             Text('Latest Message: $data'),
  ///             if (isComplete) Text('Messages are complete'),
  ///           ]
  ///         );
  ///       },
  ///       error: (error, stackTrace) {
  ///         return Text('We have an error');
  ///       },
  ///       loading: () {
  ///         return CircularProgressIndicator();
  ///       },
  ///     );
  ///   },
  /// );
  /// ```
  R when<R>({
    required R Function(T data, bool isComplete) data,
    required R Function(Object error, StackTrace? stackTrace) error,
    required R Function() loading,
  }) {
    switch (connectionState) {
      case ConnectionState.none:
        if (this.data is T) {
          return data(this.data as T, true);
        } else {
          return loading();
        }
      case ConnectionState.waiting:
        return loading();
      case ConnectionState.active:
        if (hasError) {
          return error(this.error!, stackTrace);
        } else {
          return data(this.data as T, false);
        }
      case ConnectionState.done:
        if (hasError) {
          return error(this.error!, stackTrace!);
        } else {
          return data(this.data as T, true);
        }
    }
  }
}
