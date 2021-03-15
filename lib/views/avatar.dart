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

class ChooseAvatar extends StatefulWidget {
  final AuthCredential credential;
  ChooseAvatar({Key key, @required this.credential}) : super(key: key);
  @override
  _ChooseAvatarState createState() => _ChooseAvatarState(this.credential);
}

class _ChooseAvatarState extends State<ChooseAvatar> {
  final phone = TextEditingController();
  final AuthCredential credential;
  _ChooseAvatarState(this.credential);
   int value;
  @override
  void initState() {
    super.initState();
    value = 0;
  }

  setvalue(int val) {
    setState(() {
      value = val;
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
                                  height: SizeConfig1.blockSizeVertical * 07,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Choose \nyour Avatar!! ',
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
                      left: 80,
                      child: CircleAvatar(
                        radius: 53,
                        backgroundColor: const Color(0xffee7e60),
                      ),
                    ),
                    Positioned(
                        left: 80,
                        child: Image.asset('assets/images/Group 489.png')),
                    Positioned(
                      left: 280,
                      child: CircleAvatar(
                        radius: 53,
                        backgroundColor: const Color(0xffffc200),
                      ),
                    ),
                    Positioned(
                        left: 280,
                        child: Image.asset('assets/images/Group 490.png')),
                    Positioned(
                      left: 80,
                      top: 120,
                      child: CircleAvatar(
                        radius: 53,
                        backgroundColor: const Color(0xffffc200),
                      ),
                    ),
                    Positioned(
                        top: 135,
                        left: 100,
                        child: Image.asset('assets/images/Group 491.png')),
                    Positioned(
                      left: 280,
                      top: 120,
                      child: CircleAvatar(
                        radius: 53,
                        backgroundColor: const Color(0xffb149c5),
                      ),
                    ),
                    Positioned(
                        top: 135,
                        left: 290,
                        child: Image.asset('assets/images/Group 492.png')),
                    Positioned(
                        top: 160,
                        left: 337,
                        child: Image.asset('assets/images/Group 493.png')),
                    Positioned(
                        top: 162,
                        left: 315,
                        child: Image.asset('assets/images/Group 494.png')),
                    Positioned(
                      left: 80,
                      top: 240,
                      child: CircleAvatar(
                        radius: 53,
                        backgroundColor: const Color(0xff9cb2f1),
                      ),
                    ),
                  
                     Positioned(
                        top: 250,
                        left: 130,
                        child: Image.asset('assets/images/Path 454.png')),
                     Positioned(
                        top: 250,
                        left: 96,
                        child: Image.asset('assets/images/Path 453.png')),
                      Positioned(
                        top: 252,
                        left: 96,
                        child: Image.asset('assets/images/Group 496.png')),
                         Positioned(
                        top: 275,
                        left: 126,
                        child: Image.asset('assets/images/Group 499.png')),
                         Positioned(
                        top: 268,
                        left: 119,
                        child: Image.asset('assets/images/Group 497.png')),
                        Positioned(
                        top: 250,
                        left: 112,
                        child: Image.asset('assets/images/Path 455.png')),
                    Positioned(
                      left: 280,
                      top: 240,
                      child: CircleAvatar(
                        radius: 53,
                        backgroundColor: const Color(0xff470b0b),
                      ),
                    ),
                    Positioned(
                      left: 80,
                      top: 360,
                      child: CircleAvatar(
                        radius: 53,
                        backgroundColor: const Color(0xffacef0b),
                      ),
                    ),
                    Positioned(
                        top: 250,
                        left: 297,
                        child: Image.asset('assets/images/Group 495.png')),
                        Positioned(
                        top: 290,
                        left: 327,
                        child: Image.asset('assets/images/Path 458.png')),
                        Positioned(
                        top: 290,
                        left: 327,
                        child: Image.asset('assets/images/Path 459.png')),
                        Positioned(
                        top: 290,
                        left: 340,
                        child: Image.asset('assets/images/Path 460.png')),
                        Positioned(
                        top:277,
                        left: 325,
                        child: Image.asset('assets/images/Ellipse 193.png')),
                        Positioned(
                        top:277,
                        left: 340,
                        child: Image.asset('assets/images/Ellipse 192.png')),
                        Positioned(
                        top:273,
                        left: 339,
                        child: Image.asset('assets/images/Line 50.png')),
                        Positioned(
                        top:273,
                        left: 322,
                        child: Image.asset('assets/images/Line 51.png')),
                    Positioned(
                        top: 370,
                        left: 110,
                        child: Image.asset('assets/images/Group 500.png')),
                    Positioned(
                      left: 280,
                      top: 360,
                      child: CircleAvatar(
                        radius: 53,
                        backgroundColor: const Color(0xff8d1616),
                      ),
                    ),
                    Positioned(
                        top: 375,
                        left: 297,
                        child: Image.asset('assets/images/Group 501.png')),
                    Positioned(
                      top: 30,
                      left: 35,
                      child: Radio(
                        value: 1,
                        groupValue: value,
                        activeColor: const Color(0xff6600ff),
                        onChanged: (val) {
                          setvalue(val);
                        },
                      ),
                    ),Positioned(
                      top: 30,
                      left: 230,
                      child: Radio(
                        value: 2,
                        groupValue: value,
                        activeColor: const Color(0xff6600ff),
                        onChanged: (val) {
                          setvalue(val);
                        },
                      ),
                    ),
                      Positioned(
                      top: 150,
                      left: 35,
                      child: Radio(
                        value: 3,
                        groupValue: value,
                        activeColor: const Color(0xff6600ff),
                        onChanged: (val) {
                          setvalue(val);
                        },
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 230,
                      child: Radio(
                        value: 4,
                        groupValue: value,
                        activeColor: const Color(0xff6600ff),
                        onChanged: (val) {
                          setvalue(val);
                        },
                      ),
                    ),
                    Positioned(
                      top: 270,
                      left: 35,
                      child: Radio(
                        value: 5,
                        groupValue: value,
                        activeColor: const Color(0xff6600ff),
                        onChanged: (val) {
                          setvalue(val);
                        },
                      ),
                    ),
                    Positioned(
                      top: 270,
                      left: 230,
                      child: Radio(
                        value: 6,
                        groupValue: value,
                        activeColor: const Color(0xff6600ff),
                        onChanged: (val) {
                          setvalue(val);
                        },
                      ),
                    ),
                    Positioned(
                      top: 390,
                      left: 35,
                      child: Radio(
                        value: 7,
                        groupValue: value,
                        activeColor: const Color(0xff6600ff),
                        onChanged: (val) {
                          setvalue(val);
                        },
                      ),
                    ),
                    Positioned(
                      top: 390,
                      left: 230,
                      child: Radio(
                        value: 8,
                        groupValue: value,
                        activeColor: const Color(0xff6600ff),
                        onChanged: (val) {
                          setvalue(val);
                        },
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
