import 'package:UniQ/views/Signup.dart';
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

class ProfileRetry extends StatefulWidget {
  @override
  _ProfileRetryState createState() => _ProfileRetryState();
}

class _ProfileRetryState extends State<ProfileRetry> {
  File imageFile;
  final phone = TextEditingController();
  _openCamera(BuildContext context) async {
    var picture = await ImagePicker.pickVideo(source: ImageSource.camera);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Give Access'),
            content: SingleChildScrollView(
                child: ListBody(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(8.0)),
                GestureDetector(
                    child: Text("Camera"),
                    onTap: () {
                      _openCamera(context);
                    })
              ],
            )),
          );
        });
  }

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
                          height: SizeConfig1.blockSizeHorizontal * 50,
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
                                  height: SizeConfig1.blockSizeVertical * 8,
                                ),
                              ],
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  'Verification \n Unsuccessful  ',
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
                  height: SizeConfig1.blockSizeVertical * 0,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 470,
                      child: Image.asset('assets/images/sub.png'),
                    ),
                    Positioned(
                      top: 135,
                      left: 80,
                      child: Image.asset('assets/images/Group 440.png'),
                    ),
                    
                    Positioned(
                      top: 380,
                      left: 113.6,
                      child: Container(
                        width: 81.0,
                        height: 81.0,
                        child: IconButton(
                            onPressed: () {
                              _showChoiceDialog(context);
                            },
                            icon: Image.asset("assets/images/photo1.png")),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(40.5, 40.5)),
                          color: const Color(0x32756d7f),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 338.0,
                  child: Text(
                    'Your photo verification was unsuccessful\nPlease verify yourself again\n',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 16,
                      color: const Color(0xd4756d7f),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
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
                      'Retry',
                      style: TextStyle(
                        fontFamily: 'Segeo UI',
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
