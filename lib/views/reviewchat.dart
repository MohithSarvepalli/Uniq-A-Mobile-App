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

class ReviewChat extends StatefulWidget {
  @override
  _ReviewChatState createState() => _ReviewChatState();
}

class _ReviewChatState extends State<ReviewChat> {
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
                      top: MediaQuery.of(context).size.height *0.13,
                      left: MediaQuery.of(context).size.width *0.24,

                      child: Container(
                        height:  MediaQuery.of(context).size.height *0.25,
                        width:  MediaQuery.of(context).size.width *0.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          image: DecorationImage(
                            image: const AssetImage('assets/images/avatar.png',),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      top:  MediaQuery.of(context).size.height *0.415,
                      left:  MediaQuery.of(context).size.width *0.115,
                      child: Container(
                        height:  MediaQuery.of(context).size.height *0.415,
                        width:  MediaQuery.of(context).size.width *0.77,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top:  MediaQuery.of(context).size.height *0.425,
                      left:  MediaQuery.of(context).size.width *0.093,
                      child: SizedBox(

                        width:  MediaQuery.of(context).size.width *0.83,
                        child: Text(
                          'Review your chat\n',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff463B53),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                   Positioned(
                     top:  MediaQuery.of(context).size.height *0.47,
                     left:  MediaQuery.of(context).size.width *0.15,
                     child: FlatButton(onPressed: null,
                      child: Image.asset(
                         'assets/images/Group 405.png'
                   ),),),

                   Positioned(top:  MediaQuery.of(context).size.height *0.47,
                       left:  MediaQuery.of(context).size.width *0.36,child: FlatButton(onPressed: null, child: Image.asset('assets/images/Group 414.png'))),
                   Positioned(top:  MediaQuery.of(context).size.height *0.47,
                       left:  MediaQuery.of(context).size.width *0.57,child: FlatButton(onPressed: null, child: Image.asset('assets/images/Group 412.png'))),
                   Positioned(top:  MediaQuery.of(context).size.height *0.496,
                       left:  MediaQuery.of(context).size.width *0.24,child: Image.asset('assets/images/Group 413.png')),
                    Positioned(
                        top:  MediaQuery.of(context).size.height *0.565,
                        left:  MediaQuery.of(context).size.width *0.165,
                        child: FlatButton(
                          child: Container(
                            height:  MediaQuery.of(context).size.height *0.05,
                            width:  MediaQuery.of(context).size.width *0.6,
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
                              'Accept and reveal profile',
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
                        top:  MediaQuery.of(context).size.height *0.65,
                        left:  MediaQuery.of(context).size.width *0.165,
                        child: FlatButton(
                          child: Container(
                            height:  MediaQuery.of(context).size.height *0.05,
                            width:  MediaQuery.of(context).size.width *0.6,
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
                              'Accept and hide profile',
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
                        top:  MediaQuery.of(context).size.height *0.735,
                        left:  MediaQuery.of(context).size.width *0.165,
                        child: FlatButton(
                          child: Container(
                            height:  MediaQuery.of(context).size.height *0.05,
                            width:  MediaQuery.of(context).size.width *0.6,
                            
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
                      top:  MediaQuery.of(context).size.height *0.734,
                      left:  MediaQuery.of(context).size.width *0.7,
                        child: IconButton(
                            icon: Icon(Icons.arrow_forward_ios,color: Colors.black54,),
                            onPressed: null),),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
