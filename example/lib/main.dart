import 'package:flutter/material.dart';
import 'package:flutter_lifecycle_timer/flutter_lifecycle_timer.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(final BuildContext context) {
    return MaterialApp(home: MainPage());
  }
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late FlutterLifecycleStopwatch _stopwatch;

  @override
  void initState() {
    super.initState();

    _stopwatch = FlutterLifecycleStopwatch(
      () => {this.setState(() => {})},
    );
  }

  @override
  Widget build(final BuildContext context) {
    print('build!');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('FlutterLifecycleTimer')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(32),
                child: _buildTimeWidget(),
              ),
              _buildButtonsWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTimeWidget() {
    final formattedTime = '${_zeroFilledTime(_stopwatch.hours())}'
        ':${_zeroFilledTime(_stopwatch.minutes())}'
        ':${_zeroFilledTime(_stopwatch.seconds())}';
    return Text(
      formattedTime,
      style: const TextStyle(fontSize: 32),
    );
  }

  Widget _buildButtonsWidget() {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => _stopwatch.start(),
          child: const Text('START'),
        ),
        ElevatedButton(
          onPressed: () => _stopwatch.stop(),
          child: const Text('STOP'),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.red),
          onPressed: () => _stopwatch.reset(),
          child: const Text('RESET'),
        ),
      ],
    );
  }

  String _zeroFilledTime(final int time) => time.toString().padLeft(2, '0');
}
