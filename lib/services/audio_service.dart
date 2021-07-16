enum AudioPlayerState { playing, loading, pause }

abstract class AudioService {
  bool get playing;

  double get volume;

  void play(String url);

  void stop();

  void mute();

  void unMute();

  void setVolume(double volume);

  Stream<AudioPlayerState> stateStream();
}
