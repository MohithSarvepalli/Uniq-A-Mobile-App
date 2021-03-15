import 'package:UniQ/views/OTP.dart';
import 'package:UniQ/views/Signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_fluid_slider/flutter_fluid_slider.dart';

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

class Slider extends StatefulWidget {
  final AuthCredential credential;
  Slider({Key key, @required this.credential}) : super(key: key);
  @override
  _SliderState createState() => _SliderState(this.credential);
}

class _SliderState extends State<Slider> {
  final phone = TextEditingController();
  final AuthCredential credential;
  _SliderState(this.credential);
  var _currentValue = 0.0;
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
                                'Select \n Distance',
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
                      top: 150,
                      left: 70,
                      child: SizedBox(
                        width: 282.0,
                        child: Text(
                          'Till this distance we will show you\n other users\' profile ',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 16,
                            color: const Color(0x54756d7f),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Positioned(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 65, 20, 0),
                            child: FluidSlider(
                              value: _currentValue,
                              onChanged: (double newValue) {
                                setState(() {
                                  _currentValue = newValue;
                                });
                              },
                              min: 0.0,
                              max: 100.0,
                              end: IconButton(
                                onPressed: null,
                                icon:
                                    Image.asset('assets/images/iconslider.png'),
                              ),
                              sliderColor: const Color(0xff6600ff),
                            ))),
                    Positioned(
                        top: 200,
                        left: 300,
                        child: Image.asset("assets/images/Group 129.png")),
                    Positioned(
                        top: 180,
                        right: 270,
                        child: Image.asset("assets/images/Group 134.png")),
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
                      child: Text('Continue',
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
