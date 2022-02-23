import 'package:flutter_lifecycle_timer/src/stopwatch/flutter_lifecycle_stopwatch.dart';
import 'package:flutter_lifecycle_timer/src/stopwatch/flutter_lifecycle_stopwatch_delegate.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final FlutterLifecycleStopwatch stopwatch = FlutterLifecycleStopwatchDelegate();

  group('#hour', () {
    test('should return hour', () {
      final actual = stopwatch.hour();
      final expected = 1;
      expect(actual, expected);
    });
  });
}
