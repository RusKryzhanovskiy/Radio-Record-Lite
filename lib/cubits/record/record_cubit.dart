import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:record/cubits/record/record_state.dart';
import 'package:record/models/responses/base_banners_response.dart';
import 'package:record/models/responses/base_stations_response.dart';
import 'package:record/services/radio_record_service.dart';
import 'package:record/utils/locator.dart';

class RecordCubit extends Cubit<RecordState> {
  RecordCubit() : super(RecordState(isLoading: true));

  final _recordProvider = locator<RadioRecordService>();

  Future<void> loadInitialData() async {
    final stableState = state;
    try {
      emit(state.copyWith(isLoading: true));

      final futures = await Future.wait([
        _recordProvider.banners(),
        _recordProvider.stations(),
      ]);

      emit(state.copyWith(
        isLoading: false,
        banners: (futures[0] as BaseBannersResponse).banners ?? [],
        genres: (futures[1] as BaseStationsResponse).result?.genre ?? [],
        stations: (futures[1] as BaseStationsResponse).result?.stations ?? [],
      ));
    } catch (error) {
      emit(RecordStateFailure(error: error.toString()));
      emit(stableState.copyWith(isLoading: false));
    }
  }
}
