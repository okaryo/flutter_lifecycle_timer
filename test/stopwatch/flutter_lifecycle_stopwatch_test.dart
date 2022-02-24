import 'dart:async';

import 'package:flutter_lifecycle_timer/src/stopwatch/flutter_lifecycle_stopwatch.dart';
import 'package:flutter_lifecycle_timer/src/stopwatch/flutter_lifecycle_stopwatch_delegate.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final timer = Timer(Duration.zero, () {});

  group('#hour', () {
    test('should return hour', () {
      final FlutterLifecycleStopwatch stopwatch = FlutterLifecycleStopwatchDelegate(timer);

      final actual = stopwatch.hours();
      final expected = 0;
      expect(actual, expected);
    });
  });

  group('#minutes', () {
    test('should return hour', () {
      final FlutterLifecycleStopwatch stopwatch = FlutterLifecycleStopwatchDelegate(timer);

      final actual = stopwatch.minutes();
      final expected = 0;
      expect(actual, expected);
    });
  });

  group('#seconds', () {
    test('should return hour', () {
      final FlutterLifecycleStopwatch stopwatch = FlutterLifecycleStopwatchDelegate(timer);

      final actual = stopwatch.seconds();
      final expected = 0;
      expect(actual, expected);
    });
  });
}
