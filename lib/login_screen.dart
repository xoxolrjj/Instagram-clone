import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/home_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Widget loader(BuildContext context, String s) {
    return CupertinoActivityIndicator();
  }

  static ElevatedButtonThemeData defaultStyle = ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
      ),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return Colors.grey;
        return Colors.blue;
      }),
      overlayColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) return Colors.transparent;
        return Colors.black12;
      }),
      foregroundColor: MaterialStateProperty.all(
        Colors.white,
      ),
      shadowColor: MaterialStateProperty.all(
        Colors.blue.withOpacity(0.40),
      ),
      elevation: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.pressed)) {
          return 6;
        }
        return 12;
      }),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(100),
              child: Column(
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    width: 80.0,
                    height: 100.0,
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      placeholder: loader,
                      imageUrl:
                          'https://cdn-icons-png.flaticon.com/512/124/124021.png',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(1.0),
              child: Column(
                children: [
                  Text(
                    'Log in to Twitter',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter valid mail id as abc@gmail.com',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter your secure password',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(1.0),
              child: Column(
                children: [
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Theme(
                    data: ThemeData(elevatedButtonTheme: defaultStyle),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text(
                          'Log in',
                        ),
                        onPressed: () {
                          if (emailController.text == "missy123" &&
                              passwordController.text == "12345") {
                            Navigator.popAndPushNamed(context, "/HomePage");
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
