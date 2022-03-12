class ElapsedTime {
  final Duration _elapsedSeconds;

  const ElapsedTime(this._elapsedSeconds);

  factory ElapsedTime.init() {
    return const ElapsedTime(Duration(seconds: 0));
  }

  int get hours => _elapsedSeconds.inSeconds ~/ (60 * 60);

  int get minutes => _elapsedSeconds.inSeconds ~/ 60;

  int get seconds => _elapsedSeconds.inSeconds % 60;

  ElapsedTime advance() {
    final newDuration = Duration(seconds: _elapsedSeconds.inSeconds + 1);
    return ElapsedTime(newDuration);
  }

  @override
  bool operator ==(other) => other is ElapsedTime && other._elapsedSeconds == this._elapsedSeconds;

  @override
  int get hashCode => super.hashCode;
}
