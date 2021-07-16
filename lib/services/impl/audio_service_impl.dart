import 'package:just_audio/just_audio.dart';
import 'package:record/services/audio_service.dart';

class AudioServiceImpl extends AudioService {
  final _player = AudioPlayer();

  @override
  bool get playing => _player.playing;

  @override
  double get volume => _player.volume;

  @override
  void mute() {
    _player.setVolume(0.0);
  }

  @override
  void play(String url) {
    _player
      ..setUrl(url)
      ..play();
  }

  @override
  void setVolume(double volume) {
    _player.setVolume(volume);
  }

  @override
  void stop() {
    _player.pause();
  }

  @override
  void unMute() {
    _player.setVolume(0.5);
  }

  @override
  Stream<AudioPlayerState> stateStream() {
    return _player.playerStateStream.map<AudioPlayerState>((event) {
      if (event.processingState == ProcessingState.idle ||
          event.processingState == ProcessingState.loading ||
          event.processingState == ProcessingState.buffering ||
          event.processingState == ProcessingState.loading) {
        return AudioPlayerState.loading;
      } else if (event.processingState == ProcessingState.ready &&
          event.playing) {
        return AudioPlayerState.playing;
      }
      return AudioPlayerState.pause;
    });
  }
}
