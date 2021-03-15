import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter/widgets.dart';
import 'package:group_radio_button/group_radio_button.dart';

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

class AreuSure extends StatefulWidget {
  @override
  _AreuSureState createState() => _AreuSureState();
}

class _AreuSureState extends State<AreuSure> {
  final phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig1().init(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UniQ',
      home: Scaffold(
          //resizeToAvoidBottomPadding: false,
          backgroundColor: const Color(0xff6687ff),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: SizeConfig1.blockSizeVertical * 0,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 700,
                    ),
                    Positioned(
                      top: 110,
                      left: 133,
                      child: Container(
                        height: 157,
                        width: 156,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          image: DecorationImage(
                            image: const AssetImage('assets/images/avatar.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 329,
                      left: 60.5,
                      child: Container(
                        height: 257.5,
                        width: 299,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 355,
                      left: 35,
                      child: SizedBox(
                        width: 338.0,
                        child: Text(
                          'Are you sure?\n',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            color: const Color(0xff463B53),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 340,
                        left: 300,
                        child: IconButton(
                            icon: Image.asset('assets/images/Path 318.png'),
                            onPressed: null)),
                    Positioned(
                        top: 420,
                        left: 80,
                        child: FlatButton(
                          onPressed: null,
                          child: Container(
                            width: 229.0,
                            height: 46.0,
                            child: Text(
                              'Yes',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 31,
                                  fontFamily: "Segoe UI",
                                  color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              color: const Color(0xff2c804b),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x8f242323),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        )),
                        Positioned(
                        top: 500,
                        left: 80,
                        child: FlatButton(
                          onPressed: null,
                          child: Container(
                            width: 229.0,
                            height: 46.0,
                            child: Text(
                              'Cancel',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 31,
                                  fontFamily: "Segoe UI",
                                  color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              color: const Color(0xff8f1616),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x8f242323),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
