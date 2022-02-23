import 'package:flutter_lifecycle_timer/src/stopwatch/flutter_lifecycle_stopwatch_delegate.dart';

class FlutterLifecycleStopwatch {
  late final FlutterLifecycleStopwatchDelegate _delegate;

  FlutterLifecycleStopwatch();

  int hour() => _delegate.hour();

  int minutes() => 40;

  int seconds() => 40;

  void start() {}

  void stop() {}

  void reset() {}
}
