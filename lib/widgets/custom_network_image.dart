import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage(
    this.imageUrl, {
    this.fit,
    Key? key,
  }) : super(key: key);

  final String imageUrl;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit,
      errorWidget: (BuildContext context, String url, dynamic error) {
        return Icon(CupertinoIcons.photo);
      },
    );
  }
}
