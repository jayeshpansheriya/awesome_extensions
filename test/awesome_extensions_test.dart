import 'package:awesome_extensions/awesome_extensions_dart.dart';
import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AsyncSnapshotExt', () {
    const value = 100;
    final err = Exception('Err');

    // Tests for the `hasData` getter
    group('hasData', () {
      test(
        'it should return true when snapshot has data and is in active state',
        () async {
          const snapshot = AsyncSnapshot<int>.withData(
            ConnectionState.active,
            value,
          );

          expect(snapshot.hasData, isTrue);
        },
      );

      test(
        'it should return true when snapshot has data and is in done state',
        () async {
          const snapshot = AsyncSnapshot<int>.withData(
            ConnectionState.done,
            value,
          );

          expect(snapshot.hasData, isTrue);
        },
      );

      test('it should return false when snapshot does not have data', () async {
        const snapshot = AsyncSnapshot<int>.nothing();

        expect(snapshot.hasData, isFalse);
      });
    });

    // Tests for the `hasError` getter
    group('hasError', () {
      test(
        'it should return true when snapshot has error and is in active state',
        () async {
          final snapshot = AsyncSnapshot<int>.withError(
            ConnectionState.done,
            Exception('Error'),
          );

          expect(snapshot.hasError, isTrue);
        },
      );

      test(
        'it should return true when snapshot has error and is in done state',
        () async {
          final snapshot = AsyncSnapshot<int>.withError(
            ConnectionState.done,
            Exception('Error'),
          );

          expect(snapshot.hasError, isTrue);
        },
      );

      test(
        'it should return false when snapshot does not have error',
        () async {
          const snapshot = AsyncSnapshot<int>.withData(
            ConnectionState.done,
            42,
          );

          expect(snapshot.hasError, isFalse);
        },
      );
    });

    // Tests for the `isLoading` getter
    group('isLoading', () {
      test('it should return true when snapshot is in waiting state', () async {
        const snapshot = AsyncSnapshot<int>.waiting();

        expect(snapshot.isLoading, isTrue);
      });

      test(
        'it should return false when snapshot is not in waiting state',
        () async {
          const snapshot = AsyncSnapshot<int>.withData(
            ConnectionState.done,
            value,
          );

          expect(snapshot.isLoading, isFalse);
        },
      );
    });

    // Tests for the `when` method with errors
    group('when error', () {
      test(
        'it should return the right error in ConnectionState.active',
        () async {
          final snapshot = AsyncSnapshot<int>.withError(
            ConnectionState.active,
            err,
          );

          final result = snapshot.when(
            data: (data, isComplete) => 'Data',
            error: (error, stackTrace) => error.toString(),
            loading: () => 'Loading',
          );

          expect(result, equals(err.toString()));
        },
      );

      test(
        'it should return the right error in ConnectionState.done',
        () async {
          final snapshot = AsyncSnapshot<int>.withError(
            ConnectionState.done,
            err,
          );

          final result = snapshot.when(
            data: (data, isComplete) => 'Data',
            error: (error, stackTrace) => error.toString(),
            loading: () => 'Loading',
          );

          expect(result, equals(err.toString()));
        },
      );
    });

    // Tests for the `when` method with data
    group('when data', () {
      test(
        'it should return the right data in ConnectionState.active',
        () async {
          const outputData = 'Data: $value, Complete: false';
          const snapshot = AsyncSnapshot<int>.withData(
            ConnectionState.active,
            value,
          );

          final result = snapshot.when(
            data: (data, isComplete) => outputData,
            error: (error, stackTrace) => error.toString(),
            loading: () => 'Loading',
          );

          expect(result, equals(outputData));
        },
      );

      test('it should return the right data in ConnectionState.done', () async {
        const outputData = 'Data: $value, Complete: true';
        const snapshot = AsyncSnapshot<int>.withData(
          ConnectionState.done,
          value,
        );

        final result = snapshot.when(
          data: (data, isComplete) => outputData,
          error: (error, stackTrace) => 'Error',
          loading: () => 'Loading',
        );

        expect(result, equals(outputData));
      });

      test('it should return the right data in ConnectionState.none', () async {
        const outputData = 'Data: $value, Complete: true';
        const snapshot = AsyncSnapshot<int>.withData(
          ConnectionState.none,
          value,
        );

        final result = snapshot.when(
          data: (data, isComplete) => outputData,
          error: (error, stackTrace) => 'Error',
          loading: () => 'Loading',
        );

        expect(result, equals(outputData));
      });

      test(
        'it should return loading when no data in ConnectionState.none',
        () async {
          const snapshot = AsyncSnapshot<int>.nothing();

          final result = snapshot.when(
            data: (data, isComplete) => 'Data',
            error: (error, stackTrace) => 'Error',
            loading: () => 'Loading',
          );

          expect(result, equals('Loading'));
        },
      );
    });

    // Tests for the `when` method in the `waiting` state
    group('when loading', () {
      test('it should return loading in ConnectionState.waiting', () async {
        const snapshot = AsyncSnapshot<int>.withData(
          ConnectionState.waiting,
          value,
        );

        final result = snapshot.when(
          data: (data, isComplete) => 'Data',
          error: (error, stackTrace) => 'Error',
          loading: () => 'Loading',
        );

        expect(result, equals('Loading'));
      });
    });

    // Tests for the `maybeWhen` method with errors
    group('maybeWhen error', () {
      test(
        'it should return the right error in ConnectionState.active',
        () async {
          final snapshot = AsyncSnapshot<int>.withError(
            ConnectionState.active,
            err,
          );

          final result = snapshot.maybeWhen(
            data: (data, isComplete) => 'Data',
            error: (error, stackTrace) => error.toString(),
            loading: () => 'Loading',
          );

          expect(result, equals(err.toString()));
        },
      );

      test(
        'it should return the right error in ConnectionState.done',
        () async {
          final snapshot = AsyncSnapshot<int>.withError(
            ConnectionState.done,
            err,
          );

          final result = snapshot.maybeWhen(
            data: (data, isComplete) => 'Data',
            error: (error, stackTrace) => error.toString(),
            loading: () => 'Loading',
          );

          expect(result, equals(err.toString()));
        },
      );
    });

    // Tests for the `maybeWhen` method with data
    group('maybeWhen data', () {
      test(
        'it should return the right data in ConnectionState.active',
        () async {
          const outputData = 'Data: $value, Complete: false';

          const snapshot = AsyncSnapshot<int>.withData(
            ConnectionState.active,
            value,
          );

          final result = snapshot.maybeWhen(
            data: (data, isComplete) => outputData,
            error: (error, stackTrace) => 'Error',
            loading: () => 'Loading',
          );

          expect(result, equals(outputData));
        },
      );

      test('it should return the right data in ConnectionState.done', () async {
        const outputData = 'Data: $value, Complete: true';
        const snapshot = AsyncSnapshot<int>.withData(
          ConnectionState.done,
          value,
        );

        final result = snapshot.maybeWhen(
          data: (data, isComplete) => outputData,
          error: (error, stackTrace) => 'Error',
          loading: () => 'Loading',
        );

        expect(result, equals(outputData));
      });

      test('it should return the right data in ConnectionState.none', () async {
        const outputData = 'Data: $value, Complete: true';
        const snapshot = AsyncSnapshot<int>.withData(
          ConnectionState.none,
          value,
        );

        final result = snapshot.maybeWhen(
          data: (data, isComplete) => outputData,
          error: (error, stackTrace) => 'Error',
          loading: () => 'Loading',
        );

        expect(result, equals(outputData));
      });

      test(
        'it should return loading when no data in ConnectionState.none',
        () async {
          const snapshot = AsyncSnapshot<int>.nothing();

          final result = snapshot.maybeWhen(
            data: (data, isComplete) => 'Data',
            error: (error, stackTrace) => 'Error',
            loading: () => 'Loading',
          );

          expect(result, equals('Loading'));
        },
      );
    });

    // Tests for the `maybeWhen` method in the `waiting` state
    group('maybeWhen loading', () {
      test('it should return loading in ConnectionState.waiting', () async {
        const snapshot = AsyncSnapshot<int>.withData(
          ConnectionState.waiting,
          value,
        );

        final result = snapshot.maybeWhen(
          data: (data, isComplete) => 'Data',
          error: (error, stackTrace) => 'Error',
          loading: () => 'Loading',
        );

        expect(result, equals('Loading'));
      });
    });
  });

  group('separatedby', () {
    test('seperate should insert separator between elements', () {
      final List<Widget> widgets = [
        const Text('Item 1'),
        const Text('Item 2'),
        const Text('Item 3'),
      ];
      const Widget separator = Divider();

      final List<Widget> result = widgets.separatedby(separator);

      expect(result.length, 5);
      expect(result[0], isInstanceOf<Text>());
      expect(result[1], isInstanceOf<Divider>());
      expect(result[2], isInstanceOf<Text>());
      expect(result[3], isInstanceOf<Divider>());
      expect(result[4], isInstanceOf<Text>());
    });

    test('seperate should return empty list when original list is empty', () {
      final List<Widget> widgets = [];
      const Widget separator = Divider();

      final List<Widget> result = widgets.separatedby(separator);

      expect(result, isEmpty);
    });

    test(
      'seperate should return the same list when it contains only one element',
      () {
        final List<Widget> widgets = [const Text('Item 1')];
        const Widget separator = Divider();

        final List<Widget> result = widgets.separatedby(separator);

        expect(result.length, 1);
        expect(result[0], isInstanceOf<Text>());
      },
    );

    test('seperate should assert when list is not a List<Widget>', () {
      final List<int> widgets = [1, 2, 3];
      expect(() => widgets.separatedby(const Divider()), throwsAssertionError);
    });
  });
}
