import 'package:record/models/responses/base_banners_response.dart';
import 'package:record/models/responses/base_playing_now_response.dart';
import 'package:record/models/responses/base_stations_response.dart';

abstract class RadioRecordService {
  Future<BaseBannersResponse> banners();

  Future<BaseStationsResponse> stations();

  Future<BasePlayingNowResponse> playingNowTracks();
}
