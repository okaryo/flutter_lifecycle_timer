import 'dart:async';

import 'package:flutter_lifecycle_timer/src/stopwatch/flutter_lifecycle_stopwatch_delegate.dart';

class FlutterLifecycleStopwatch {
  late final FlutterLifecycleStopwatchDelegate _delegate;

  FlutterLifecycleStopwatch() {
    final timer = Timer(Duration.zero, () {});
    _delegate = FlutterLifecycleStopwatchDelegate(timer);
  }

  int hours() => _delegate.hours();

  int minutes() => _delegate.minutes();

  int seconds() => _delegate.seconds();

  void start() {}

  void stop() {}

  void reset() {}
}
