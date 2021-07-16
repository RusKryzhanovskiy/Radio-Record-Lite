import 'package:flutter/foundation.dart';
import 'package:record/models/playing_now.dart';
import 'package:record/models/station.dart';
import 'package:record/services/audio_service.dart';

@immutable
class PlayerState {
  const PlayerState({
    this.playingNow,
    this.selectedStation,
    this.playerState = AudioPlayerState.pause,
    this.volume = 1.0,
  });

  final double volume;
  final Station? selectedStation;
  final AudioPlayerState playerState;
  final List<PlayingNow?>? playingNow;

  PlayerState copyWith({
    double? volume,
    Station? selectedStation,
    List<PlayingNow?>? playingNow,
    AudioPlayerState? playerState,
  }) {
    return PlayerState(
      volume: volume ?? this.volume,
      selectedStation: selectedStation ?? this.selectedStation,
      playerState: playerState ?? this.playerState,
      playingNow: playingNow ?? this.playingNow,
    );
  }
}

class PlayerStateFailure extends PlayerState {
  const PlayerStateFailure({required this.error});

  final String error;
}
