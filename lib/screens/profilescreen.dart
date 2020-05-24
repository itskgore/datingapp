import 'package:datingappclone/screens/SuperLikeScree.dart';
import 'package:datingappclone/styles/color.dart';
import 'package:datingappclone/styles/textstyle.dart';
import 'package:datingappclone/widgets/MyInfo.dart';
import 'package:datingappclone/widgets/OpaqueImage.dart';
import 'package:datingappclone/widgets/ProfileInfoCard.dart';
import 'package:datingappclone/widgets/ProfileInfoSmallCard.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 4,
                child: Stack(
                  children: [
                    OpaqueImage(
                        imgeurl:
                            'https://avatars3.githubusercontent.com/u/49974198?s=460&u=ff4edc506e05d4fd4dc787767a6fccce8c556786&v=4'),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'My Profile',
                                style: headingTextStyle,
                                textAlign: TextAlign.left,
                              ),
                            ),
                            MyInfo()
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Table(
                    children: [
                      TableRow(children: [
                        ProfileInfoCard(
                          firsttext: '13',
                          icon: Icon(
                            Icons.star,
                            color: blueColor,
                            size: 18,
                          ),
                          secondtext: 'New Matchs',
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (con) => SuperLike()));
                          },
                          child: ProfileInfoCard(
                            firsttext: '11',
                            icon: Icon(
                              Icons.do_not_disturb_off,
                              color: blueColor,
                              size: 18,
                            ),
                            secondtext: 'Unmatched Me',
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        ProfileInfoCard(
                          firsttext: '262',
                          icon: Icon(
                            Icons.beenhere,
                            color: blueColor,
                            size: 18,
                          ),
                          secondtext: 'All Matches',
                        ),
                        ProfileInfoCard(
                          firsttext: '40',
                          icon: Icon(
                            Icons.speaker_notes_off,
                            color: blueColor,
                            size: 18,
                          ),
                          secondtext: 'Rematched',
                        ),
                      ]),
                      TableRow(children: [
                        ProfileInfoCard(
                          firsttext: '100',
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: blueColor,
                            size: 18,
                          ),
                          secondtext: 'Unique Visit',
                        ),
                        ProfileInfoCard(
                          firsttext: '42',
                          icon: Icon(
                            Icons.favorite,
                            color: blueColor,
                            size: 18,
                          ),
                          secondtext: 'Super Likes',
                        ),
                      ])
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: size.height * (4 / 9) -
                size.height *
                    0.12 /
                    2, //Becoz the column is divided in 4/5 = 9  so our calcu goes as 4/9
            left: 10,
            right: 10,
            child: Container(
              height: size.height * 0.12,
              child: ListView(
                scrollDirection: Axis.horizontal,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisSize: MainAxisSize.max,
                children: [
                  ProfileInfoSmallCard(
                    firstText: 'Reach',
                    progress: '10k',
                    hasimage: false,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ProfileInfoSmallCard(
                    firstText: '❤',
                    progress: '5k',
                    hasimage: false,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ProfileInfoSmallCard(
                    firstText: 'Visit',
                    progress: '2k',
                    hasimage: false,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ProfileInfoSmallCard(
                    firstText: 'Pending',
                    progress: '20',
                    hasimage: false,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
