import 'package:cached_network_image/cached_network_image.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'user.dart';

class Post extends StatefulWidget {
    final User user;
    const Post({Key? key, required this.user}) : super(key: key);
    @override
    _PostState createState() => _PostState();
  }

  class _PostState extends State<Post> {
    Widget loader(BuildContext context, String s) {
      return CupertinoActivityIndicator();
    }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  width: 70,
                  height: 70,
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    placeholder: loader,
                    imageUrl: widget.user.profileUrl,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.user.nameUrl,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      widget.user.captionUrl,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Icon(CupertinoIcons.ellipsis),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(CupertinoIcons.heart),
                  Text("589"),
                ],
              ),
              Row(
                children: [
                  Icon(CupertinoIcons.chat_bubble),
                  Text("378"),
                ],
              ),
              Row(
                children: [
                  Icon(CupertinoIcons.arrow_up_right),
                  Text("267"),
                ],
              ),
              Icon(CupertinoIcons.add_circled),
            ],
          ),
        ],
      ),
    );
  }
}
  