import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:record/cubits/player/player_cubit.dart';
import 'package:record/cubits/player/player_state.dart';
import 'package:record/models/station.dart';
import 'package:record/services/audio_service.dart';
import 'package:record/widgets/custom_network_image.dart';

class StationCircleWidget extends StatefulWidget {
  const StationCircleWidget({
    required this.station,
    Key? key,
  }) : super(key: key);

  final Station? station;

  @override
  _StationCircleWidgetState createState() => _StationCircleWidgetState();
}

class _StationCircleWidgetState extends State<StationCircleWidget> {
  late final PlayerCubit playerCubit;

  var isPlaying = false;

  @override
  void initState() {
    playerCubit = BlocProvider.of<PlayerCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerCubit, PlayerState>(
      bloc: playerCubit,
      builder: (BuildContext context, PlayerState state) {
        isPlaying = state.selectedStation?.id == widget.station?.id;

        return buildBody(state);
      },
    );
  }

  Widget buildBody(PlayerState state) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {
        if (state.playerState == AudioPlayerState.playing && isPlaying) {
          playerCubit.stop();
        } else {
          playerCubit.play(station: widget.station);
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  buildIconCircle(state.playerState),
                  buildNewLabel(),
                ],
              ),
            ),
            buildTitle(),
          ],
        ),
      ),
    );
  }

  Widget buildIconCircle(AudioPlayerState playerState) {
    Widget playingIcon = CupertinoActivityIndicator(radius: 12);
    if (playerState == AudioPlayerState.playing) {
      playingIcon = Icon(
        CupertinoIcons.pause,
        size: 40,
        color: Theme.of(context).primaryColor,
      );
    } else if (playerState == AudioPlayerState.pause) {
      playingIcon = Padding(
        padding: EdgeInsetsDirectional.only(start: 8.0),
        child: Icon(
          CupertinoIcons.play,
          size: 40,
          color: Theme.of(context).primaryColor,
        ),
      );
    }

    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        margin: EdgeInsets.all(8),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(500),
          border: Border.all(
            color: isPlaying ? Theme.of(context).primaryColor : Colors.grey,
            width: 3,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomNetworkImage(widget.station?.iconGray, height: 70),
            if (isPlaying)
              Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(500),
                ),
                child: playingIcon,
              ),
          ],
        ),
      ),
    );
  }

  Widget buildNewLabel() {
    final isNew = widget.station?.stationNew ?? false;
    if (!isNew) return Container();

    return Positioned(
      bottom: 4,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.9),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          'NEW',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Widget buildTitle() {
    return Text(
      widget.station?.title ?? '',
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: isPlaying ? Theme.of(context).primaryColor : Colors.grey,
      ),
    );
  }
}
