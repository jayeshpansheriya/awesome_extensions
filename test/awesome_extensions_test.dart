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

        final List<Widget> result = widgets.separatedBy(separator);

        expect(result.length, 1);
        expect(result[0], isInstanceOf<Text>());
      },
    );
  });

  group('StringExtension Improvements', () {
    test('capitalize and capitalizeFirst handle empty string safely', () {
      expect(''.capitalize, equals(''));
      expect(''.capitalizeFirst, equals(''));
      expect('flutter dev'.capitalize, equals('Flutter Dev'));
      expect('flutter dev'.capitalizeFirst, equals('Flutter dev'));
    });

    test('isJson parses json strings correctly', () {
      expect('{"name": "Flutter"}'.isJson, isTrue);
      expect('[1, 2, 3]'.isJson, isTrue);
      expect('not a json'.isJson, isFalse);
    });

    test('toSlug converts string to url friendly slug', () {
      expect('Hello World!'.toSlug, equals('hello-world'));
      expect(
        'Awesome Flutter Extensions 100%'.toSlug,
        equals('awesome-flutter-extensions-100'),
      );
    });

    test('removeSpecialCharacters strips non-alphanumeric chars', () {
      expect('Hello@# \$World!'.removeSpecialCharacters, equals('Hello World'));
    });

    test('NullableStringExtension handles null and empty checks', () {
      String? nullStr;
      String? emptyStr = '   ';
      String? validStr = 'Awesome';

      expect(nullStr.isNullOrEmpty, isTrue);
      expect(emptyStr.isNullOrEmpty, isTrue);
      expect(validStr.isNullOrEmpty, isFalse);

      expect(validStr.isNotNullOrEmpty, isTrue);
      expect(nullStr.orDefault('Fallback'), equals('Fallback'));
      expect(validStr.orDefault('Fallback'), equals('Awesome'));
    });
  });

  group('IterableExtension & ListExtension', () {
    test('getOrNull returns element or null safely', () {
      final list = [10, 20, 30];
      expect(list.getOrNull(0), equals(10));
      expect(list.getOrNull(2), equals(30));
      expect(list.getOrNull(-1), isNull);
      expect(list.getOrNull(5), isNull);
    });

    test('firstWhereOrNull & lastWhereOrNull find elements safely', () {
      final list = [1, 2, 3, 4, 5];
      expect(list.firstWhereOrNull((e) => e > 3), equals(4));
      expect(list.firstWhereOrNull((e) => e > 10), isNull);
      expect(list.lastWhereOrNull((e) => e < 4), equals(3));
      expect(list.lastWhereOrNull((e) => e < 0), isNull);
    });

    test('chunked splits list into chunks of given size', () {
      final list = [1, 2, 3, 4, 5];
      final chunks = list.chunked(2);
      expect(
        chunks,
        equals([
          [1, 2],
          [3, 4],
          [5],
        ]),
      );
    });

    test('distinctBy removes duplicates based on selector', () {
      final list = [
        {'id': 1, 'name': 'A'},
        {'id': 1, 'name': 'B'},
        {'id': 2, 'name': 'C'},
      ];
      final result = list.distinctBy((e) => e['id']);
      expect(result.length, equals(2));
      expect(result[0]['name'], equals('A'));
      expect(result[1]['name'], equals('C'));
    });
  });

  group('DateExtension New Methods', () {
    test('isTomorrow, isLeapYear, and daysInMonth calculations', () {
      final now = DateTime.now();
      final tomorrow = now.add(const Duration(days: 1));
      expect(tomorrow.isTomorrow, isTrue);

      final leapDate = DateTime(2024, 2, 1);
      expect(leapDate.isLeapYear, isTrue);
      expect(leapDate.daysInMonth, equals(29));

      final start = now.startOfDay;
      expect(start.hour, equals(0));
      expect(start.minute, equals(0));

      final end = now.endOfDay;
      expect(end.hour, equals(23));
      expect(end.minute, equals(59));
    });

    test('timeAgo formats relative dates', () {
      final now = DateTime.now();
      expect(
        now.subtract(const Duration(seconds: 2)).timeAgo,
        equals('just now'),
      );
      expect(
        now.subtract(const Duration(minutes: 5)).timeAgo,
        equals('5 minutes ago'),
      );
      expect(
        now.subtract(const Duration(hours: 2)).timeAgo,
        equals('2 hours ago'),
      );
    });
  });

  group('NumExtension Formatting', () {
    test('roundToDecimal, toCurrency, and toPercent', () {
      expect(3.14159.roundToDecimal(2), equals(3.14));
      expect(1234.5.toCurrency(symbol: '\$'), equals('\$1234.50'));
      expect(0.75.toPercent(), equals('75%'));
    });
  });

  group('Widget Extensions', () {
    testWidgets('margin extensions wrap in Container with margins', (
      WidgetTester tester,
    ) async {
      const widget = Text('Test');
      final marginWidget = widget.marginAll(16.0);

      await tester.pumpWidget(MaterialApp(home: Scaffold(body: marginWidget)));
      expect(find.byType(Container), findsOneWidget);
    });

    testWidgets('layout helper extensions wrap widgets correctly', (
      WidgetTester tester,
    ) async {
      const widget = Text('Test');

      final scrollableWidget = widget.scrollable();
      final safeAreaWidget = widget.safeArea();
      final cardWidget = widget.card();
      final clipWidget = widget.clipRRect(
        borderRadius: BorderRadius.circular(8),
      );
      final visibleWidget = widget.visible(true);
      final hiddenWidget = widget.visible(false);

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Column(
              children: [
                scrollableWidget,
                safeAreaWidget,
                cardWidget,
                clipWidget,
                visibleWidget,
                hiddenWidget,
              ],
            ),
          ),
        ),
      );

      expect(find.byType(SingleChildScrollView), findsOneWidget);
      expect(find.byType(SafeArea), findsOneWidget);
      expect(find.byType(Card), findsOneWidget);
      expect(find.byType(ClipRRect), findsOneWidget);
      expect(
        find.text('Test'),
        findsNWidgets(5),
      ); // visibleWidget is rendered, hiddenWidget is SizedBox.shrink()
    });
  });
}
