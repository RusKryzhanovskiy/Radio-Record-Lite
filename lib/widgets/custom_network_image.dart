import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage(
    this.imageUrl, {
    this.fit,
    this.height,
    this.width,
    Key? key,
  }) : super(key: key);

  final String? imageUrl;
  final double? height;
  final double? width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null) return Container();

    return CachedNetworkImage(
      fit: fit,
      imageUrl: imageUrl ?? '',
      height: height,
      width: width,
      errorWidget: (BuildContext context, String url, dynamic error) {
        return Icon(CupertinoIcons.photo);
      },
    );
  }
}
