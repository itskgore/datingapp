import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final String imageurl;
  final Size size;
  const RoundedImage(
      {Key key, this.imageurl, this.size = const Size.fromWidth(120)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        imageurl,
        width: size.width,
        height: size.width,
        fit: BoxFit.contain,
      ),
    );
  }
}
