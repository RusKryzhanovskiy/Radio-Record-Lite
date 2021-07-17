import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:record/cubits/player/player_cubit.dart';
import 'package:record/cubits/player/player_state.dart';
import 'package:record/services/audio_service.dart';
import 'package:record/widgets/custom_network_image.dart';

class BottomPlayerBar extends StatefulWidget {
  const BottomPlayerBar({Key? key}) : super(key: key);

  @override
  _BottomPlayerBarState createState() => _BottomPlayerBarState();
}

class _BottomPlayerBarState extends State<BottomPlayerBar> {
  late final PlayerCubit playerCubit;

  @override
  void initState() {
    playerCubit = BlocProvider.of<PlayerCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: playerCubit,
      builder: (BuildContext context, PlayerState state) {
        if (state.selectedStation == null) {
          return SizedBox(height: 0);
        }

        return buildBody(state);
      },
    );
  }

  Widget buildBody(PlayerState state) {
    final track = state.playingNow
        ?.firstWhereOrNull((track) => track?.id == state.selectedStation?.id)
        ?.track;

    return Card(
      margin: EdgeInsetsDirectional.zero,
      color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
      child: SafeArea(
        child: Container(
          padding: EdgeInsetsDirectional.all(4),
          height: kBottomNavigationBarHeight * 1.3,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              if (track?.image200 != null)
                SizedBox(
                  width: 65,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: CustomNetworkImage(track?.image200),
                  ),
                ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.only(start: 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        track?.song ?? '',
                        style: TextStyle(fontSize: 16),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(top: 4, start: 1),
                        child: Text(
                          track?.artist ?? '',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(top: 4.0),
                        child: Text(
                          '• ${state.selectedStation?.title}',
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 8),
                child: buildPlayerState(state.playerState),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPlayerState(AudioPlayerState playerState) {
    if (playerState == AudioPlayerState.loading) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: CupertinoActivityIndicator(),
      );
    }

    return IconButton(
      onPressed: () {
        if (playerState == AudioPlayerState.playing) {
          playerCubit.stop();
        } else {
          playerCubit.play();
        }
      },
      icon: Icon(
        playerState == AudioPlayerState.playing
            ? CupertinoIcons.pause
            : CupertinoIcons.play_arrow_solid,
      ),
    );
  }
}
