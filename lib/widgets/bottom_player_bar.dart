import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:record/blocs/player/player_bloc.dart';
import 'package:record/blocs/player/player_state.dart';
import 'package:record/services/audio_service.dart';

class BottomPlayerBar extends StatelessWidget {
  const BottomPlayerBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: BlocProvider.of<PlayerCubit>(context),
      builder: (BuildContext context, PlayerState state) {
        if (state.selectedStation == null) {
          return SizedBox(height: 0);
        }

        return buildBody(context: context, state: state);
      },
    );
  }

  Widget buildBody({
    required BuildContext context,
    required PlayerState state,
  }) {
    final track = state.playingNow
        ?.firstWhere(
          (track) => track?.id == state.selectedStation?.id,
          orElse: () => null,
        )
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
                    child: Image.network(track?.image200 ?? ''),
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
                      Text(
                        track?.artist ?? '',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(top: 4.0),
                        child: Text(
                          state.selectedStation?.title ?? '',
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (MediaQuery.of(context).size.width > 650)
                Slider(
                  onChanged: (double volume) {
                    BlocProvider.of<PlayerCubit>(context).setVolume(volume);
                  },
                  value: BlocProvider.of<PlayerCubit>(context).state.volume,
                  min: 0.0,
                  max: 1.0,
                  activeColor: Colors.grey,
                ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 8),
                child: buildPlayerState(
                  context: context,
                  playerState: state.playerState,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPlayerState({
    required BuildContext context,
    required AudioPlayerState playerState,
  }) {
    final cubit = BlocProvider.of<PlayerCubit>(context);

    if (playerState == AudioPlayerState.loading) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: CupertinoActivityIndicator(),
      );
    }

    return IconButton(
      onPressed: () {
        playerState == AudioPlayerState.playing ? cubit.stop() : cubit.play();
      },
      icon: Icon(
        playerState == AudioPlayerState.playing
            ? CupertinoIcons.pause
            : CupertinoIcons.play_arrow_solid,
      ),
    );
  }
}
