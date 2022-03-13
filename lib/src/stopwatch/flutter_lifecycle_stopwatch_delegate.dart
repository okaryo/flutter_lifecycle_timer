import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lifecycle_timer/src/stopwatch/elapsed_time.dart';
import 'package:flutter_lifecycle_timer/src/stopwatch/flutter_lifecycle_stopwatch.dart';

class FlutterLifecycleStopwatchDelegate with WidgetsBindingObserver implements FlutterLifecycleStopwatch {
  final Function _onTick;
  late Timer _timer;
  ElapsedTime _elapsedTime;

  FlutterLifecycleStopwatchDelegate(this._onTick) : _elapsedTime = ElapsedTime.init();

  @override
  int hours() => _elapsedTime.hours;

  @override
  int minutes() => _elapsedTime.minutes;

  @override
  int seconds() => _elapsedTime.seconds;

  @override
  void start() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      _elapsedTime = _elapsedTime.advance();
      _onTick();
    });
  }

  @override
  void stop() {
    _timer.cancel();
  }

  @override
  void reset() {
    _timer.cancel();
    _elapsedTime = ElapsedTime.init();
  }

  @override
  void onTick(Function callback) => callback();
}
