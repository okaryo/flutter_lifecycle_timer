import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_lifecycle_timer/src/stopwatch/elapsed_time.dart';
import 'package:flutter_lifecycle_timer/src/stopwatch/flutter_lifecycle_stopwatch.dart';

class FlutterLifecycleStopwatchDelegate with WidgetsBindingObserver implements FlutterLifecycleStopwatch {
  final ElapsedTime _elapsedTime;
  Timer _timer;

  FlutterLifecycleStopwatchDelegate(this._timer) : _elapsedTime = ElapsedTime.init();

  @override
  int hours() => _elapsedTime.hours;

  @override
  int minutes() => _elapsedTime.minutes;

  @override
  int seconds() => _elapsedTime.seconds;

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
