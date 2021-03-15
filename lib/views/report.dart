import 'package:flutter/material.dart';
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

class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
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
                      top: MediaQuery.of(context).size.height*0.18,
                      left: MediaQuery.of(context).size.width*0.27,
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.23,
                        width: MediaQuery.of(context).size.width*0.43,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          image: DecorationImage(
                            image: const AssetImage('assets/images/avatar.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
//                    Positioned(
//                      top: 262,
//                      right: 1,
//                      left: 1.5,
//                      child: Container(
//                        height: 455.84,
//                        width: 550,
//                        decoration: BoxDecoration(
//                          borderRadius: BorderRadius.circular(45),
//                          image: DecorationImage(
//                            image:
//                                const AssetImage('assets/images/Group 407.png'),
//                            fit: BoxFit.fill,
//                          ),
//                        ),
//                      ),
//                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height*0.44,
                      left: MediaQuery.of(context).size.width*0.12,
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.333,
                        width: MediaQuery.of(context).size.width*0.759,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          image: DecorationImage(
                            image:
                                const AssetImage('assets/images/Path 238.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: MediaQuery.of(context).size.height*0.49,
                        left: MediaQuery.of(context).size.width*0.16,
                        child: FlatButton(
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.054,
                            width: MediaQuery.of(context).size.width*0.595,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(21.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: Text(
                              'Report a problem',
                              style: TextStyle(
                                fontFamily: 'Segeo UI',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black54,
                                height: 2,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onPressed: () {
                            ////BUTTON ON PRESS
                          },
                        )),
                    Positioned(
                        top: MediaQuery.of(context).size.height*0.57,
                        left: MediaQuery.of(context).size.width*0.16,
                        child: FlatButton(
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.054,
                            width: MediaQuery.of(context).size.width*0.595,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(21.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: Text(
                              'Report User',
                              style: TextStyle(
                                fontFamily: 'Segeo UI',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black54,
                                height: 2,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onPressed: () {
                            ////BUTTON ON PRESS
                          },
                        )),
                    Positioned(
                        top: MediaQuery.of(context).size.height*0.655,
                        left: MediaQuery.of(context).size.width*0.16,
                        child: FlatButton(
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.054,
                            width: MediaQuery.of(context).size.width*0.595,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(21.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: Text(
                              'Next chat',
                              style: TextStyle(
                                fontFamily: 'Segeo UI',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black54,
                                height: 2,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onPressed: () {
                            ////BUTTON ON PRESS
                          },
                        )),
                    Positioned(
                        top: MediaQuery.of(context).size.height*0.655,
                        left: MediaQuery.of(context).size.width*0.69,
                        child: IconButton(
                            icon: Icon(Icons.arrow_forward_ios, color: Colors.black54,),
                            onPressed: null)),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
