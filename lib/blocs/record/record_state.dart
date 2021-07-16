import 'package:flutter/foundation.dart';
import 'package:record/models/banner.dart';
import 'package:record/models/genre.dart';
import 'package:record/models/station.dart';

@immutable
class RecordState {
  const RecordState({
    this.isLoading = false,
    this.banners,
    this.genres,
    this.stations,
  });

  final bool isLoading;
  final List<Genre?>? genres;
  final List<Station?>? stations;
  final List<EventBanner?>? banners;

  RecordState copyWith({
    bool? isLoading,
    List<EventBanner?>? banners,
    List<Genre?>? genres,
    List<Station?>? stations,
  }) {
    return RecordState(
      isLoading: isLoading ?? this.isLoading,
      banners: banners ?? this.banners,
      genres: genres ?? this.genres,
      stations: stations ?? this.stations,
    );
  }
}

class RecordStateFailure extends RecordState {
  const RecordStateFailure({required this.error});

  final String error;
}
