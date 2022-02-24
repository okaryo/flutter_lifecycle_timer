import 'package:freezed_annotation/freezed_annotation.dart';

part 'elapsed_time.freezed.dart';

@freezed
class ElapsedTime with _$ElapsedTime {
  const factory ElapsedTime(Duration elapsedSeconds) = _ElapsedTime;

  const ElapsedTime._();

  factory ElapsedTime.init() {
    return ElapsedTime(Duration(seconds: 0));
  }

  int get hours => elapsedSeconds.inSeconds ~/ (60 * 60);

  int get minutes => elapsedSeconds.inSeconds ~/ 60;

  int get seconds => elapsedSeconds.inSeconds % 60;

  ElapsedTime advance() {
    final newDuration = Duration(seconds: elapsedSeconds.inSeconds + 1);
    return ElapsedTime(newDuration);
  }
}
