import 'dart:io';

import 'package:record/models/responses/base_banners_response.dart';
import 'package:record/models/responses/base_playing_now_response.dart';
import 'package:record/models/responses/base_stations_response.dart';
import 'package:record/services/dio_mixin.dart';
import 'package:record/services/radio_record_service.dart';

class RadioRecordServiceImpl extends RadioRecordService with DioMixin {
  @override
  Future<BaseBannersResponse> banners() async {
    final response = await dio.get('banners');

    if (response.statusCode == HttpStatus.ok) {
      return BaseBannersResponse.fromJson(response.data);
    }

    throw Exception(response.data);
  }

  @override
  Future<BaseStationsResponse> stations() async {
    final response = await dio.get('stations');

    if (response.statusCode == HttpStatus.ok) {
      return BaseStationsResponse.fromJson(response.data);
    }

    throw Exception(response.data);
  }

  @override
  Future<BasePlayingNowResponse> playingNowTracks() async {
    final response = await dio.get('stations/now');

    if (response.statusCode == HttpStatus.ok) {
      return BasePlayingNowResponse.fromJson(response.data);
    }

    throw Exception(response.data);
  }
}
