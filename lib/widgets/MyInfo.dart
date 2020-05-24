import 'package:datingappclone/styles/textstyle.dart';
import 'package:datingappclone/widgets/RoundedImage.dart';
import 'package:datingappclone/widgets/radiaprogress.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RadialProgress(
            child: RoundedImage(
                imageurl:
                    'https://avatars3.githubusercontent.com/u/49974198?s=460&u=ff4edc506e05d4fd4dc787767a6fccce8c556786&v=4',
                size: Size.fromWidth(100.0)),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Karan Gore',
                style: whiteNameTextStyle,
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            '22 July 1998',
            style: whiteNameTextStyle.copyWith(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
