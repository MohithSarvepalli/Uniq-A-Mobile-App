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

enum op { OP1, OP2, OP3 }

class ReportUser extends StatefulWidget {
  @override
  _ReportUserState createState() => _ReportUserState();
}

class _ReportUserState extends State<ReportUser> {
  final phone = TextEditingController();
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
                    Positioned(
                      top: MediaQuery.of(context).size.height*0.44,
                      left: MediaQuery.of(context).size.width*0.12,
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.333,
                        width: MediaQuery.of(context).size.width*0.759,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Colors.white.withOpacity(0.65),
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height*0.483,
                      left: MediaQuery.of(context).size.width*0.16,

                      child: Text(
                        'Why are you reporting this user?\n',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff463B53),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Positioned(
                        top: MediaQuery.of(context).size.height*0.44,
                        left: MediaQuery.of(context).size.width*0.73,
                        child: IconButton(
                            icon: Image.asset('assets/images/Path 318.png'),
                            onPressed: null)),
                    Positioned(
                      top: MediaQuery.of(context).size.height*0.505,
                      left: MediaQuery.of(context).size.width*0.12,
                      child: Radio(
                        value: 1,
                        groupValue: value,
                        activeColor: Colors.black,
                        onChanged: (val) {
                          setvalue(val);
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height*0.54,
                      left: MediaQuery.of(context).size.width*0.12,
                      child: Radio(
                        value: 2,
                        groupValue: value,
                        activeColor: Colors.black,
                        onChanged: (val) {
                          setvalue(val);
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height*0.58,
                      left: MediaQuery.of(context).size.width*0.12,
                      child: Radio(
                        value: 3,
                        groupValue: value,
                        activeColor: Colors.black,
                        onChanged: (val) {
                          setvalue(val);
                        },
                      ),
                    ),
                    Positioned(
                        top: MediaQuery.of(context).size.height*0.521,
                        left: MediaQuery.of(context).size.width*0.24,
                        child: Text(
                          'It\'s spam',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w600),
                        )),
                    Positioned(
                        top: MediaQuery.of(context).size.height*0.557,
                        left: MediaQuery.of(context).size.width*0.24,
                        child: Text(
                          'It\'s inappropriate',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w600),
                        )),
                    Positioned(
                        top: MediaQuery.of(context).size.height*0.596,
                        left: MediaQuery.of(context).size.width*0.24,
                        child: Text(
                          'It seems fake',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w600),
                        )),
                    Positioned(
                        top: MediaQuery.of(context).size.height*0.665,
                        left: MediaQuery.of(context).size.width*0.211,
                      child: FlatButton(onPressed: null, child: Container(
                        height: MediaQuery.of(context).size.height*0.047,
                        width: MediaQuery.of(context).size.width*0.5,
                        child: Center(
                          child: Text('Confirm',
                          textAlign:TextAlign.center ,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize:18,
                            fontFamily: "Segoe UI",
                            color: Colors.black87
                          ),),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: const Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x8f242323),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      ),)
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
