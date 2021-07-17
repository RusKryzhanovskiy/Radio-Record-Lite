import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:record/models/station.dart';
import 'package:record/services/audio_service.dart';
import 'package:record/widgets/custom_network_image.dart';

class StationTile extends StatelessWidget {
  const StationTile({
    required this.station,
    this.audioPlayerState = AudioPlayerState.pause,
    this.isCurrent = false,
    this.onTap,
    Key? key,
  }) : super(key: key);

  final Station station;
  final VoidCallback? onTap;
  final AudioPlayerState audioPlayerState;
  final bool isCurrent;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CustomNetworkImage(
        isCurrent ? station.iconFillColored : station.iconGray,
        width: 60,
      ),
      trailing: buildStatus(context: context, isActive: isCurrent),
      title: Text(
        station.title ?? '',
        style: TextStyle(
          color: isCurrent ? Theme.of(context).primaryColor : null,
        ),
      ),
      subtitle: (station.stationNew ?? false)
          ? Text('NEW', style: TextStyle(color: Colors.red))
          : null,
    );
  }

  Widget? buildStatus({
    required BuildContext context,
    required bool isActive,
  }) {
    if (!isActive) return null;

    Widget playingIcon = CupertinoActivityIndicator(radius: 12);
    if (audioPlayerState == AudioPlayerState.playing) {
      playingIcon = Icon(
        CupertinoIcons.pause,
        color: Theme.of(context).primaryColor,
      );
    } else if (audioPlayerState == AudioPlayerState.pause) {
      playingIcon = Icon(
        CupertinoIcons.play,
        color: Theme.of(context).primaryColor,
      );
    }

    return playingIcon;
  }
}
