import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

class SwiperCarousel extends StatelessWidget {
  const SwiperCarousel({
    required this.itemCount,
    required this.itemBuilder,
    Key? key,
  }) : super(key: key);

  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 2.45,
      child: Swiper(
        autoplay: true,
        scale: 0.9,
        itemCount: itemCount,
        viewportFraction: 0.85,
        itemBuilder: itemBuilder,
        autoplayDelay: 8000,
        pagination: SwiperPagination(
          builder: DotSwiperPaginationBuilder(
            color: Colors.white.withOpacity(0.4),
            activeColor: Colors.white.withOpacity(0.7),
            size: 6,
            activeSize: 7,
          ),
        ),
        control: SwiperControl(
          size: 20,
          color: Colors.white,
          padding: EdgeInsetsDirectional.only(start: 18, end: 13),
        ),
      ),
    );
  }
}
