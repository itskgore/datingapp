import 'package:datingappclone/styles/color.dart';
import 'package:datingappclone/styles/textstyle.dart';
import 'package:datingappclone/widgets/NarrowAppBar.dart';
import 'package:flutter/material.dart';

class SuperLike extends StatelessWidget {
  const SuperLike({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: NarrowAppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Colors.grey[100],
              Colors.grey[200],
              Colors.grey[300],
              Colors.grey[400],
              Colors.grey[500]
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Super Likes',
                style: headingTextStyle.copyWith(color: Colors.black),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: subTitleStyle.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w300),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.blue,
                      )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    'Super Likes',
                    style: titleStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: primaryColor),
                    child: Center(
                      child: Text(
                        "5",
                        textAlign: TextAlign.center,
                        style: titleStyle.copyWith(
                            fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    '1h',
                    style: titleStyle.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    color: Colors.grey[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ListTile(
                      title: Text(
                        "Anne ${index}",
                        style: titleStyle,
                      ),
                      subtitle: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(Icons.location_on),
                          Text(
                            "  3${index} kilometers",
                            style: whiteSubHeadingTextStyle.copyWith(
                                color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                      leading: ClipOval(
                        child: Image.network(
                          "https://avatars3.githubusercontent.com/u/49974198?s=460&u=ff4edc506e05d4fd4dc787767a6fccce8c556786&v=4",
                          width: 50,
                          height: 50,
                        ),
                      ),
                      trailing: SizedBox(
                        width: 75,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  CircleAvatar(
                                    backgroundColor: Colors.green,
                                    maxRadius: 6,
                                    // minRadius: 5,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "ONLINE",
                                    style: whiteSubHeadingTextStyle.copyWith(
                                        color: Colors.green, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
