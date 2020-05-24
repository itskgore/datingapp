import 'package:datingappclone/styles/textstyle.dart';
import 'package:flutter/material.dart';

class ProfileInfoCard extends StatelessWidget {
  final String firsttext;
  final String secondtext;
  final Widget icon;
  const ProfileInfoCard({Key key, this.firsttext, this.icon, this.secondtext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 9,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(left: 24.0, top: 8, bottom: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(alignment: Alignment.topRight, child: icon),
            Text(
              firsttext,
              style: titleStyle,
            ),
            Text(
              secondtext,
              style: subTitleStyle,
            )
          ],
        ),
      ),
    );
  }
}
