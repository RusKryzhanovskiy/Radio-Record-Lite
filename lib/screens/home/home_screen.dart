import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:record/cubits/record/record_cubit.dart';
import 'package:record/cubits/record/record_state.dart';
import 'package:record/screens/home/widgets/banner_widget.dart';
import 'package:record/screens/home/widgets/station_circle_widget.dart';
import 'package:record/screens/stations/stations_screen.dart';
import 'package:record/utils/navigation.dart';
import 'package:record/utils/pop_up_utils.dart';
import 'package:record/widgets/bottom_player_bar.dart';
import 'package:record/widgets/swiper_carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final RecordCubit recordCubit;

  final stationsController = ScrollController();

  @override
  void initState() {
    recordCubit = BlocProvider.of<RecordCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Radio Record Lite')),
      bottomNavigationBar: BottomPlayerBar(),
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
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 20),
      children: [
        if (state.banners?.isNotEmpty ?? false)
          SwiperCarousel(
            itemCount: state.banners?.length ?? 0,
            itemBuilder: (BuildContext context, int index) {
              final banner = state.banners?[index];
              return BannerWidget(banner: banner);
            },
          ),
        if (state.stations?.isNotEmpty ?? false) buildStations(state),
      ],
    );
  }

  Widget buildStations(RecordState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoButton(
            onPressed: () {
              Navigation.toScreen(
                context: context,
                screen: StationsScreen(),
              );
            },
            child: Text(
              'Stations',
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 130,
            child: Scrollbar(
              controller: stationsController,
              child: ListView.builder(
                controller: stationsController,
                scrollDirection: Axis.horizontal,
                itemCount: state.stations?.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  final station = state.stations?[index];

                  return SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                    child: StationCircleWidget(station: station),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
