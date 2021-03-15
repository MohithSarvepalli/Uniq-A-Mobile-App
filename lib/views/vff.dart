import 'package:UniQ/views/OTP.dart';
import 'package:UniQ/views/Signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter/widgets.dart';

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

class ChooseVff extends StatefulWidget {
  final AuthCredential credential;
  ChooseVff({Key key, @required this.credential}) : super(key: key);
  @override
  _ChooseVffState createState() => _ChooseVffState(this.credential);
}

class _ChooseVffState extends State<ChooseVff> {
  final phone = TextEditingController();
  final AuthCredential credential;
  _ChooseVffState(this.credential);
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
                                  height: SizeConfig1.blockSizeVertical * 07,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Choose \nyour VFF!! ',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 43,
                                  color: const Color(0xffffffff),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig1.blockSizeVertical * 3,
                ),
                Stack(
                  
                  children: <Widget>[
                    Container(
                      height: 700,
                    ),
                    Positioned(
                      top: 130,
                      left: 125,
                      child: Container(
                        child: Image.asset("assets/images/Image 1.png"),
                      ),
                    ),
                    
                    Positioned(
                      left: 200,
                      child: Image.asset("assets/images/Path 308.png")),
                    Positioned(
                      top: 205,
                      left: 20,
                      child: Container(
                        width: 45.0,
                        height: 45.35,
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/arrow_right.png")),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          gradient: LinearGradient(
                            begin: Alignment(-2.07, -6.41),
                            end: Alignment(1.35, 4.57),
                            colors: [
                              const Color(0xffee00ff),
                              const Color(0xff6600ff)
                            ],
                            stops: [0.0, 1.0],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left:280,
                      top:55,
                      child: Text("Hi! I\'m \n MaX!",
                    style:TextStyle(
                      fontSize: 24,
                      fontFamily: "Segoe UI",
                      fontWeight: FontWeight.w600,
                      color:const Color(0xff615D5D),

                    ),)),
                    Positioned(
                      top: 310,
                      left: 80,
                      child: Image.asset("assets/images/Path 307.png")),
                    Positioned(
                      top: 200,
                      left: 360,
                      child: Container(
                        width: 45.0,
                        height: 45.35,
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/arrow_left.png")),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26.0),
                          gradient: LinearGradient(
                            begin: Alignment(-2.07, -6.41),
                            end: Alignment(1.35, 4.57),
                            colors: [
                              const Color(0xffee00ff),
                              const Color(0xff6600ff)
                            ],
                            stops: [0.0, 1.0],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 500,
                      left: 45,
                      child: FlatButton(
                        child: Container(
                          width: 307.0,
                          height: 52.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26.0),
                            gradient: LinearGradient(
                              begin: Alignment(-2.07, -6.41),
                              end: Alignment(1.35, 4.57),
                              colors: [
                                const Color(0xffee00ff),
                                const Color(0xff6600ff)
                              ],
                              stops: [0.0, 1.0],
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Positioned(
                      top: 507,
                      left: 170,
                      child: Text('Confirm',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Segoe UI",
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
