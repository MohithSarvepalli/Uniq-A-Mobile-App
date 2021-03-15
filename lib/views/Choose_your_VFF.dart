import 'dart:math';

import 'package:UniQ/views/OTP.dart';
import 'package:UniQ/views/Signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter/widgets.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class SizeConfig1 {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }
}

class EnterMobile extends StatefulWidget {
  @override
  _EnterMobileState createState() => _EnterMobileState();
}

class _EnterMobileState extends State<EnterMobile> {
  @override
  Widget build(BuildContext context) {
    SizeConfig1().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UniQ',
      home: Scaffold(
          //resizeToAvoidBottomPadding: false,
          backgroundColor: const Color(0xffffffff),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: SizeConfig1.blockSizeHorizontal * 45,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-1.52, 1.0),
                              end: Alignment(1.13, -0.95),
                              colors: [
                                const Color(0xffee00ff),
                                const Color(0xff6600ff)
                              ],
                              stops: [0.0, 1.0],
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                PageLink(
                                  child: Icon(
                                    FontAwesomeIcons.arrowLeft,
                                    color: Colors.white,
                                  ),
                                  links: [
                                    PageLinkInfo(
                                      transition: LinkTransition.SlideRight,
                                      ease: Curves.easeOut,
                                      duration: 0.3,
                                      pageBuilder: () => SignUp(),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: SizeConfig1.blockSizeHorizontal * 85,
                                  height: SizeConfig1.blockSizeVertical * 4,
                                ),
                              ],
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  'Choose \n your VFF!! ',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 43,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.center,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig1.blockSizeVertical * 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlatButton(
                      child: Container(
                        width: 46.0,
                        height: 46.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.0),
                          gradient: LinearGradient(
                            begin: Alignment(-1.35, 2.14),
                            end: Alignment(1.13, -2.03),
                            colors: [
                              const Color(0xffee00ff),
                              const Color(0xff6600ff)
                            ],
                            stops: [0.0, 1.0],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/arrow_left.png")),
                      ),
                      onPressed: () {
                        print("Hello"); ////BUTTON ON PRESS
                      },
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                            height: 175,
                            width: 175,
                            child: IconButton(
                                onPressed: () {},
                                icon:
                                    Image.asset("assets/images/Image 1.png"))),
                        Positioned(
                          top: -80,
                          right: -70,
                          child: Stack(
                            children: <Widget>[
                              Text("Hi! I'am \n MaX!"),
                              IconButton(
                                  onPressed: () {},
                                  iconSize: 150,
                                  icon: Image.asset(
                                      "assets/images/Path 308.png")),
                            ],
                          ),
                        )
                      ],
                      overflow: Overflow.visible,
                    ),
                    FlatButton(
                      child: Container(
                        width: 46.0,
                        height: 46.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.0),
                          gradient: LinearGradient(
                            begin: Alignment(-1.35, 2.14),
                            end: Alignment(1.13, -2.03),
                            colors: [
                              const Color(0xffee00ff),
                              const Color(0xff6600ff)
                            ],
                            stops: [0.0, 1.0],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: RotatedBox(
                          quarterTurns: 2,
                          child: IconButton(
                              onPressed: () {},
                              icon:
                                  Image.asset("assets/images/arrow_left.png")),
                        ),
                      ),
                      onPressed: () {
                        print("Hello"); ////BUTTON ON PRESS
                      },
                    ),
                  ],
                ),
                SizedBox(height: SizeConfig1.blockSizeVertical * 0),
                Container(
                  width: 800,
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/Path 307.png")),
                ),
                SizedBox(height: SizeConfig1.blockSizeVertical * 20),
                FlatButton(
                  child: Container(
                    width: 307,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      gradient: LinearGradient(
                        begin: Alignment(-1.35, 2.14),
                        end: Alignment(1.13, -2.03),
                        colors: [
                          const Color(0xffee00ff),
                          const Color(0xff6600ff)
                        ],
                        stops: [0.0, 1.0],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Text(
                      'CONFIRM',
                      style: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffffffff),
                        height: 1.8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onPressed: () {
                    ////BUTTON ON PRESS
                  },
                ),
              ],
            ),
          )),
    );
  }
}
