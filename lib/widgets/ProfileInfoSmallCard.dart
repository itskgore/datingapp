import 'package:datingappclone/styles/textstyle.dart';
import 'package:flutter/material.dart';

class ProfileInfoSmallCard extends StatelessWidget {
  final String firstText;
  final String progress;
  final hasimage;
  final Widget icon;

  const ProfileInfoSmallCard(
      {Key key, this.firstText, this.hasimage, this.icon, this.progress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.30,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.white,
        elevation: 5,
        child: hasimage
            ? Center(
                child: Icon(Icons.star_border, size: 25, color: Colors.red))
            : TwoLineItem(
                firstText: firstText,
                secondText: progress,
              ),
      ),
    );
  }
}

class TwoLineItem extends StatelessWidget {
  final String firstText;
  final String secondText;
  const TwoLineItem({Key key, this.firstText, this.secondText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstText,
          style: titleStyle,
        ),
        Text(
          secondText,
          style: subTitleStyle.copyWith(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
