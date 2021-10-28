import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_application_2/login_screen.dart';
import 'user.dart';
import 'post.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget loader(BuildContext context, String s) {
    return CupertinoActivityIndicator();
  }

  List<User> user = [
    User(
        profileUrl: "https://data.whicdn.com/images/346745357/original.jpg",
        nameUrl: "CLRXZ @iambvrlyWho·21h",
        captionUrl: "tama talaga instinct ko always :)"),
    User(
        profileUrl: "https://data.whicdn.com/images/346745357/original.jpg",
        nameUrl: "CLRXZ @iambvrlyWho·21h",
        captionUrl: "tama talaga instinct ko always :)"),
    User(
        profileUrl: "https://data.whicdn.com/images/346745357/original.jpg",
        nameUrl: "CLRXZ @iambvrlyWho·21h",
        captionUrl: "tama talaga instinct ko always :)"),
    User(
        profileUrl: "https://data.whicdn.com/images/346745357/original.jpg",
        nameUrl: "CQWEQWEQE·21h",
        captionUrl: "tama talaga instinct ko always :)"),
    User(
        profileUrl: "https://data.whicdn.com/images/346745357/original.jpg",
        nameUrl: "CLRXZ @iambvrlyWho·21h",
        captionUrl: "tama talaga instinct ko always :)"),
    User(
        profileUrl: "https://data.whicdn.com/images/346745357/original.jpg",
        nameUrl: "CLRXZ @iambvrlyWho·21h",
        captionUrl: "tama talaga instinct ko always :)"),
    User(
        profileUrl: "https://data.whicdn.com/images/346745357/original.jpg",
        nameUrl: "CLRXZ @iambvrlyWho·21h",
        captionUrl: "tama talaga instinct ko always :)"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    width: 40,
                    height: 40,
                    child: CachedNetworkImage(
                      placeholder: loader,
                      imageUrl:
                          "https://yt3.ggpht.com/ytc/AKedOLT0BQ-nULEKYe97Nm5-fsAHSsUGrT1be5e-JBD2=s900-c-k-c0x00ffffff-no-rj",
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    EvaIcons.twitter,
                    color: Colors.blue,
                    size: 40.0,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(EvaIcons.home),
                )
              ],
            ),
          ],
        ),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: user.length,
        itemBuilder: (context, index) {
          return Post(
            user: user[index],
          );
        },
      ),
    );
  }
}
