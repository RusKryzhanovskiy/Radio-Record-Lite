import 'package:flutter/material.dart';
import 'package:record/models/banner.dart';
import 'package:record/widgets/custom_network_image.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    required this.banner,
    Key? key,
  }) : super(key: key);

  final EventBanner? banner;

  @override
  Widget build(BuildContext context) {
    if (banner == null) return Container();

    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Stack(
        fit: StackFit.expand,
        children: [
          CustomNetworkImage(banner?.image ?? '', fit: BoxFit.cover),
          Container(
            color: Colors.black.withOpacity(0.5),
            alignment: AlignmentDirectional.bottomStart,
            padding: EdgeInsetsDirectional.only(start: 16, bottom: 30, end: 34),
            child: Text(
              banner?.text ?? '',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
