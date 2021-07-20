import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:record/cubits/player/player_cubit.dart';
import 'package:record/cubits/player/player_state.dart';
import 'package:record/cubits/record/record_cubit.dart';
import 'package:record/cubits/record/record_state.dart';
import 'package:record/models/genre.dart';
import 'package:record/models/station.dart';
import 'package:record/screens/stations/widgets/station_tile.dart';
import 'package:record/services/audio_service.dart';
import 'package:record/utils/pop_up_utils.dart';
import 'package:record/widgets/record_scaffold.dart';

class StationsScreen extends StatefulWidget {
  const StationsScreen({Key? key}) : super(key: key);

  @override
  _StationsScreenState createState() => _StationsScreenState();
}

class _StationsScreenState extends State<StationsScreen> {
  late final RecordCubit recordCubit;
  late final PlayerCubit playerCubit;

  final stationsController = ScrollController();

  Genre? selectedGenre;

  @override
  void initState() {
    recordCubit = BlocProvider.of<RecordCubit>(context);
    playerCubit = BlocProvider.of<PlayerCubit>(context);

    selectedGenre = recordCubit.state.genres?.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RecordScaffold(
      body: BlocConsumer<RecordCubit, RecordState>(
        bloc: recordCubit,
        listener: (BuildContext context, RecordState state) {
          if (state is RecordStateFailure) {
            PopUpUtils.showSnackBar(context: context, message: state.error);
          }
        },
        builder: (BuildContext context, RecordState state) {
          if (state is RecordStateFailure) {
            return Container();
          } else if (state.isLoading) {
            return Center(child: CircularProgressIndicator());
          }

          return buildBody(state);
        },
      ),
    );
  }

  Widget buildBody(RecordState state) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.genres?.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                final genre = state.genres?[index];
                if (genre == null) return Container();

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGenre = genre;
                      });
                    },
                    child: Chip(
                      label: Text(
                        genre.name ?? '',
                        style: TextStyle(
                          color: genre.id == selectedGenre?.id
                              ? Theme.of(context).primaryColor
                              : null,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Divider(height: 0),
        Expanded(
          child: BlocBuilder<PlayerCubit, PlayerState>(
            bloc: playerCubit,
            builder: (BuildContext context, PlayerState playerState) {
              return buildSongList(
                recordState: state,
                playerState: playerState,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget buildSongList({
    required RecordState recordState,
    required PlayerState playerState,
  }) {
    final stations = recordState.stations?.toList() ?? []
      ..removeWhere((Station? element) {
        return !(element?.genre?.contains(selectedGenre) ?? true);
      });

    return Scrollbar(
      controller: stationsController,
      child: ListView.separated(
        itemCount: stations.length,
        controller: stationsController,
        padding: EdgeInsets.symmetric(vertical: 8),
        separatorBuilder: (_, __) => Divider(),
        itemBuilder: (_, int index) {
          final station = stations[index];
          if (station == null) return Container();

          final isCurrent = playerState.selectedStation?.id == station.id;
          final state = playerState.playerState;

          return StationTile(
            station: station,
            isCurrent: isCurrent,
            audioPlayerState: state,
            onTap: () {
              if (state == AudioPlayerState.playing && isCurrent) {
                playerCubit.stop();
              } else {
                playerCubit.play(station: station);
              }
            },
          );
        },
      ),
    );
  }
}
