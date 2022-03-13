import 'package:flutter_lifecycle_timer/src/stopwatch/flutter_lifecycle_stopwatch_delegate.dart';

class FlutterLifecycleStopwatch {
  late final FlutterLifecycleStopwatchDelegate _delegate;

  FlutterLifecycleStopwatch(final Function onTick) {
    _delegate = FlutterLifecycleStopwatchDelegate(onTick);
  }

  int hours() => _delegate.hours();

  int minutes() => _delegate.minutes();

  int seconds() => _delegate.seconds();

  void start() => _delegate.start();

  void stop() => _delegate.stop();

  void reset() => _delegate.reset();

  void onTick(Function callback()) => _delegate.onTick(callback);
}
