import 'package:awesome_extensions/awesome_extensions_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('adds one to input values', () {});

  group('AsyncSnapshotExt', () {
    group('when error', () {
      test('it should return the right error in ConnectionState.active',
          () async {
        final err = Exception('Err');

        final snapshot =
            AsyncSnapshot<int>.withError(ConnectionState.active, err);

        final result = snapshot.when(
          data: (data, isComplete) => 'Data',
          error: (error, stackTrace) => error.toString(),
          loading: () => 'Loading',
        );

        expect(result, equals(err.toString()));
      });

      test('it should return the right error in ConnectionState.done',
          () async {
        final err = Exception('Err');

        final snapshot =
            AsyncSnapshot<int>.withError(ConnectionState.done, err);

        final result = snapshot.when(
          data: (data, isComplete) => 'Data',
          error: (error, stackTrace) => error.toString(),
          loading: () => 'Loading',
        );

        expect(result, equals(err.toString()));
      });
    });
  });
}
