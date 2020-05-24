import 'package:datingappclone/styles/color.dart';
import 'package:flutter/material.dart';

class OpaqueImage extends StatelessWidget {
  final String imgeurl;

  const OpaqueImage({Key key, @required this.imgeurl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          imgeurl,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          color: Colors.black.withOpacity(0.50),
        )
      ],
    );
  }
}
