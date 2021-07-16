import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:record/blocs/player/player_state.dart';
import 'package:record/models/station.dart';
import 'package:record/services/audio_service.dart';
import 'package:record/services/radio_record_service.dart';
import 'package:record/utils/backend_issuer.dart';
import 'package:record/utils/locator.dart';

class PlayerCubit extends Cubit<PlayerState> {
  PlayerCubit() : super(PlayerState());

  final _audioService = locator<AudioService>();
  final _recordService = locator<RadioRecordService>();

  Future<void> init() async {
    final stableState = state;
    try {
      await _updateTracks();

      _audioService.stateStream().listen((playerState) {
        emit(state.copyWith(playerState: playerState));
      });

      Timer.periodic(Duration(seconds: 10), (_) => _updateTracks());
    } catch (error) {
      emit(PlayerStateFailure(error: error.toString()));
      emit(stableState);
    }
  }

  Future<void> play({Station? station}) async {
    final stableState = state;
    try {
      if (station == null) {
        if (state.selectedStation != null) {
          _audioService.play(state.selectedStation?.stream128 ?? '');
        }
      } else {
        _audioService.play(station.stream128 ?? '');
        emit(state.copyWith(selectedStation: station));
      }
    } catch (error) {
      emit(PlayerStateFailure(error: error.toString()));
      emit(stableState);
    }
  }

  Future<void> stop() async {
    final stableState = state;
    try {
      _audioService.stop();
    } catch (error) {
      emit(PlayerStateFailure(error: error.toString()));
      emit(stableState);
    }
  }

  Future<void> setVolume(double volume) async {
    final stableState = state;
    try {
      _audioService.setVolume(volume);

      emit(state.copyWith(volume: volume));
    } catch (error) {
      emit(PlayerStateFailure(error: error.toString()));
      emit(stableState);
    }
  }

  Future<void> _updateTracks() async {
    final stableState = state;
    try {
      final tracksResponse = await _recordService.playingNowTracks();
      final fixedTracks = BackendIssuer.fixPlayingNowImages(
        tracksResponse.result,
      );

      emit(state.copyWith(playingNow: fixedTracks));
    } catch (error) {
      emit(PlayerStateFailure(error: error.toString()));
      emit(stableState);
    }
  }
}
