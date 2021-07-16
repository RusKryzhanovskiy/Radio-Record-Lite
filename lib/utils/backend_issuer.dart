import 'package:record/models/playing_now.dart';

class BackendIssuer {
  static List<PlayingNow?> fixPlayingNowImages(List<PlayingNow?>? source) {
    if (source == null || source.isEmpty) {
      return [];
    }

    return source.map<PlayingNow?>((PlayingNow? element) {
      if (element == null) return null;

      if (element.track?.image200?.contains('/local/templates') ?? false) {
        return element.copyWith.track!(
          image100: 'https://www.radiorecord.ru${element.track?.image100}',
          image200: 'https://www.radiorecord.ru${element.track?.image200}',
          image600: 'https://www.radiorecord.ru${element.track?.image600}',
        );
      }
      return element;
    }).toList();
  }
}
