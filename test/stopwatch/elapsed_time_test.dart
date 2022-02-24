import 'package:flutter_lifecycle_timer/src/stopwatch/elapsed_time.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#init', () {
    test('should return zero elapsed time', () {
      final actual = ElapsedTime.init();
      final expected = ElapsedTime(Duration(seconds: 0));
      expect(actual, expected);
    });
  });

  group('#hours', () {
    test('should return hours', () {
      final actual = ElapsedTime(Duration(seconds: 3601)).hours;
      final expected = 1;
      expect(actual, expected);
    });
  });

  group('#minutes', () {
    test('should return minutes', () {
      final actual = ElapsedTime(Duration(seconds: 121)).minutes;
      final expected = 2;
      expect(actual, expected);
    });
  });

  group('#seconds', () {
    test('should return minutes', () {
      final actual = ElapsedTime(Duration(seconds: 72)).seconds;
      final expected = 12;
      expect(actual, expected);
    });
  });

  group('#advance', () {
    test('should advance one second', () {
      final actual = ElapsedTime(Duration(seconds: 10)).advance();
      final expected = ElapsedTime(Duration(seconds: 11));
      expect(actual, expected);
    });
  });
}
