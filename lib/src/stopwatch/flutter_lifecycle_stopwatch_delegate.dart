import 'package:flutter/widgets.dart';
import 'package:flutter_lifecycle_timer/src/stopwatch/flutter_lifecycle_stopwatch.dart';

class FlutterLifecycleStopwatchDelegate with WidgetsBindingObserver implements FlutterLifecycleStopwatch {
  @override
  int hour() => 1;

  @override
  int minutes() {
    // TODO: implement minutes
    throw UnimplementedError();
  }

  @override
  int seconds() {
    // TODO: implement seconds
    throw UnimplementedError();
  }

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void stop() {
    // TODO: implement stop
  }

  @override
  void reset() {
    // TODO: implement reset
  }
}
