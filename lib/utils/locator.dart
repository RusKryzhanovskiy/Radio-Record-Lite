import 'package:get_it/get_it.dart';
import 'package:record/services/audio_service.dart';
import 'package:record/services/impl/audio_service_impl.dart';
import 'package:record/services/impl/radio_record_service_impl.dart';
import 'package:record/services/radio_record_service.dart';

final locator = GetIt.instance;

Future<void> registerLocator() async {
  locator
    ..registerSingleton<RadioRecordService>(RadioRecordServiceImpl())
    ..registerSingleton<AudioService>(AudioServiceImpl());
}
