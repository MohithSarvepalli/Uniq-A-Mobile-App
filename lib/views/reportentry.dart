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

class ReportEntry extends StatefulWidget {
  @override
  _ReportEntryState createState() => _ReportEntryState();
}

class _ReportEntryState extends State<ReportEntry> {
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
                      top: MediaQuery.of(context).size.height*0.16,
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
                      top: MediaQuery.of(context).size.height*0.469,
                      left: MediaQuery.of(context).size.width*0.04,
                      child: SizedBox(
                        width:MediaQuery.of(context).size.width*0.87,
                        child: Text(
                          'Tell us the problem\nserve you better\n',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 16,
                            color: const Color(0xff463B53),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height*0.565,
                      left: MediaQuery.of(context).size.width*0.175,
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.15,
                        width: MediaQuery.of(context).size.width*0.649,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 26,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: const Color(0xffa4a4a4)),
                            ),
                            filled: true,
                            fillColor: Colors.grey[300],
                            focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: const Color(0xffa4a4a4)),
                              
                            )
                            
                          ),
                          cursorColor: Color(0xff000000),
                          maxLines: 10,
                        ),
                      ),
                    ),
                    Positioned(
                        top: MediaQuery.of(context).size.height*0.469,
                        left: MediaQuery.of(context).size.width*0.73,
                        child: IconButton(
                            icon: Image.asset('assets/images/Path 318.png'),
                            onPressed: null)),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
