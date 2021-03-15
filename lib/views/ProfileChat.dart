import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_3.dart';
import 'package:intl/intl.dart';

class SizeConfig {
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

class ProfileChat extends StatefulWidget {
  @override
  _ProfileChatState createState() => _ProfileChatState();
}

class _ProfileChatState extends State<ProfileChat> {
  bool _checked = false;

  bool _isNameVisible = false;
  bool _isGenderQVisible = false;
  bool _isGenderVisible = false;
  bool _isBirthQVisible = false;
  bool _isBirthVisible = false;
  bool _isNicknameQVisible = false;
  bool _isNicknameVisible = false;
  bool _isOrientationQVisible = false;
  bool _isOrientationVisible = false;
  bool _isInterestVisible = false;
  bool _isInterestQVisible = false;
  bool _isContinueVisible = false;
  bool _isTextAreaVisible = true;

  TextEditingController replyText = new TextEditingController();
  String name = 'undefined';
  String gender = 'undefined';
  String birthday = 'undefined';
  String nickname = 'undefined';
  String orientation = 'undefined';
  String interest = 'undefined';

  DateTime _currentdate = new DateTime(DateTime.now().year - 16,DateTime.now().month,DateTime.now().day);


  Future<Null> _selectdate(BuildContext context) async{
    final DateTime _seldate = await showDatePicker(
      context: context,
      initialDate: _currentdate,
      firstDate: DateTime(1900),
      lastDate: _currentdate,
      builder: (context, child){
        return SingleChildScrollView(child: child,);
      }
    );

    if(_seldate != null)
      {
        setState(() {
          _currentdate = _seldate;
        });
      }
  }

  @override
  Widget build(BuildContext context) {
    String _formatdate = new DateFormat.yMMMd().format(_currentdate);
    SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UniQ',
      home: Scaffold(
          //resizeToAvoidBottomPadding: false,
          backgroundColor: const Color(0xffffffff),
          body: Stack(
            children: <Widget>[
              SingleChildScrollView(
                reverse: true,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: SizeConfig.blockSizeHorizontal * 42,
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
                            Visibility(
                              visible: true,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: SizeConfig.blockSizeVertical * 7,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      'Tell us about\nyourself',
                                      style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 32,
                                        color: const Color(0xffffffff),
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeHorizontal * 3,
                    ),


                    ChatBubble(
                      clipper:
                          ChatBubbleClipper3(type: BubbleType.receiverBubble),
                      backGroundColor: Color(0xffD8D8D8),
                      margin: EdgeInsets.only(top: 20),
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.7,
                        ),
                        child: Text(
                          "Hey, what is your name?",
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'Lato'),
                        ),
                      ),
                    ),

                    //Name
                    Visibility(
                      visible: _isNameVisible,
                      child: ChatBubble(
                        clipper:
                            ChatBubbleClipper3(type: BubbleType.sendBubble),
                        alignment: Alignment.centerRight,
                        backGroundColor: Color(0xff9c00ff),
                        child: Container(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.7,
                            ),
                            child: Text(
                              name,
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Lato'),
                            )),
                      ),
                    ),

                    //Gender Question
                    Visibility(
                      visible: _isGenderQVisible,
                      child: ChatBubble(
                        clipper:
                            ChatBubbleClipper3(type: BubbleType.receiverBubble),
                        backGroundColor: Color(0xffD8D8D8),
                        margin: EdgeInsets.only(top: 20),
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.7,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(

                               "$name, you are",
                                style: TextStyle(
                                    color: Colors.black, fontFamily: 'Lato'),
                              ),
                              Container(
                                width: 180,
                                child: FlatButton(
                                  color: Colors.white,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    side: BorderSide(
                                        color: Color(0xff9c00ff),
                                        width: 2,
                                        style: BorderStyle.solid),
                                  ),
                                  child: Text(
                                    "MAN",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      gender = 'MAN';
                                      _isTextAreaVisible = false;
                                      _isGenderVisible = true;
                                      _isBirthQVisible = true;
                                    });

                                  },
                                ),
                              ),
                              Container(
                                width: 180,
                                child: FlatButton(
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    side: BorderSide(
                                      color: const Color(0xff9c00ff),
                                      width: 2,
                                    ),
                                  ),
                                  child: Text(
                                    'WOMAN',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      gender = 'WOMAN';
                                      _isTextAreaVisible = false;
                                      _isGenderVisible = true;
                                      _isBirthQVisible = true;
                                    });

                                  },
                                ),
                              ),
                              Container(
                                width: 180,
                                child: FlatButton(
                                  color: Colors.white,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    side: BorderSide(
                                      color: const Color(0xff9c00ff),
                                      width: 2,
                                    ),
                                  ),
                                  child: Text(
                                    "OTHER",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      gender= 'OTHERS';
                                      _isTextAreaVisible = false;
                                      _isGenderVisible = true;
                                      _isBirthQVisible = true;
                                    });

                                  },
                                ),
                              ),
                              CheckboxListTile(
                                title: Text(
                                  "Show my gender on my profile",
                                  style: TextStyle(fontFamily: 'Lato'),
                                ),
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                activeColor: Colors.white,
                                checkColor: Colors.black,
                                value: _checked,
                                onChanged: (bool value) {
                                  setState(() {
                                    _checked = value;
                                  });
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    //Gender Answer
                    Visibility(
                      visible: _isGenderVisible,
                      child: ChatBubble(
                        clipper:
                            ChatBubbleClipper3(type: BubbleType.sendBubble),
                        alignment: Alignment.centerRight,
                        backGroundColor: Color(0xff9c00ff),
                        child: Container(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.7,
                            ),
                            child: Text(
                              gender,
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Lato'),
                            )),

                      ),
                    ),

                    //Birthday question
                    Visibility(
                      visible: _isBirthQVisible,
                      child: ChatBubble(
                        clipper:
                            ChatBubbleClipper3(type: BubbleType.receiverBubble),
                        backGroundColor: Color(0xffD8D8D8),
                        margin: EdgeInsets.only(top: 20),
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.7,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "When is your Birthday?",
                                style: TextStyle(
                                    color: Colors.black, fontFamily: 'Lato'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "DD/MM/YYYY",
                                style: TextStyle(color: Colors.blueGrey),
                              ),

                              IconButton(
                                icon: Icon(Icons.calendar_today),
                                onPressed: (){
                                _selectdate(context);
                                setState((){

                                  _isBirthVisible = true;
                                  _isNicknameQVisible = true;
                                  _isTextAreaVisible = true;
                                });
                              },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //Birthday Answer

                    Visibility (
                      visible: _isBirthVisible,
                      child: ChatBubble (
                        clipper:
                            ChatBubbleClipper3(type: BubbleType.sendBubble),
                        alignment: Alignment.centerRight,
                        backGroundColor: Color(0xff9c00ff),
                        child: Container (
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.7,
                            ),
                            child: Text (
                              _formatdate,
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Lato'),
                            ),
                        ),
                      ),
                    ),

                    //Nickname Question
                    Visibility(
                      visible: _isNicknameQVisible,
                      child: ChatBubble(
                        clipper:
                            ChatBubbleClipper3(type: BubbleType.receiverBubble),
                        backGroundColor: Color(0xffD8D8D8),
                        margin: EdgeInsets.only(top: 20),
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.7,
                          ),
                          child: Text(
                            "So what will be your\n"
                            "made up name? This\n"
                            "name is going to\n"
                            "appear on your profile.",
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'Lato'),
                          ),
                        ),
                      ),
                    ),

                    //Nickname Answer
                    Visibility(
                      visible: _isNicknameVisible,
                      child: ChatBubble(
                        clipper:
                            ChatBubbleClipper3(type: BubbleType.sendBubble),
                        alignment: Alignment.centerRight,
                        backGroundColor: Color(0xff9c00ff),
                        child: Container(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.7,
                            ),
                            child: Text(
                              nickname,
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Lato'),
                            )),
                      ),
                    ),

                    //Sexual Orientation
                    Visibility(
                      visible: _isOrientationQVisible,
                      child: ChatBubble(
                        clipper:
                            ChatBubbleClipper3(type: BubbleType.receiverBubble),
                        backGroundColor: Color(0xffD8D8D8),
                        margin: EdgeInsets.only(top: 20),
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.7,
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "You are interested in...",
                                style: TextStyle(
                                    color: Colors.black, fontFamily: 'Lato'),
                              ),
                              Container(
                                width: 180,
                                child: FlatButton(
                                  color: Colors.white,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    side: BorderSide(
                                        color: const Color(0xff9c00ff),
                                        width: 2),
                                  ),
                                  child: Text(
                                    "MEN",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      orientation = 'MEN';
                                      _isOrientationVisible=true;
                                      _isInterestQVisible = true;
                                      _isTextAreaVisible = false;
                                    });

                                  },
                                ),
                              ),
                              Container(
                                width: 180,
                                child: FlatButton(
                                  color: Colors.white,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    side: BorderSide(
                                        color: const Color(0xff9c00ff),
                                        width: 2),
                                  ),
                                  child: Text(
                                    "WOMEN",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      orientation = 'WOMEN';
                                      _isOrientationVisible=true;
                                      _isInterestQVisible = true;
                                      _isTextAreaVisible = false;
                                    });

                                  },
                                ),
                              ),
                              Container(
                                width: 180,
                                child: FlatButton(
                                  color: Colors.white,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    side: BorderSide(
                                        color: const Color(0xff9c00ff),
                                        width: 2),
                                  ),
                                  child: Text(
                                    "EVERYONE",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      orientation = 'EVERYONE';
                                      _isOrientationVisible=true;
                                      _isInterestQVisible = true;
                                      _isTextAreaVisible = false;
                                    });

                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //Sexual Orientation Answer
                    Visibility(
                      visible: _isOrientationVisible,
                      child: ChatBubble(
                        clipper:
                            ChatBubbleClipper3(type: BubbleType.sendBubble),
                        alignment: Alignment.centerRight,
                        backGroundColor: Color(0xff9c00ff),
                        child: Container(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.7,
                            ),
                            child: Text(
                              orientation,
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Lato'),
                            )),
                      ),
                    ),

                    //Interests Question
                    Visibility(
                      visible: _isInterestQVisible,
                      child: ChatBubble(
                        clipper:
                            ChatBubbleClipper3(type: BubbleType.receiverBubble),
                        backGroundColor: Color(0xffD8D8D8),
                        margin: EdgeInsets.only(top: 20),
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.7,
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "And finally, what are "
                                "you looking for",
                                style: TextStyle(
                                    color: Colors.black, fontFamily: 'Lato'),
                              ),
                              Container(
                                width: 180,
                                child: FlatButton(
                                  color: Colors.white,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    side: BorderSide(
                                        color: const Color(0xff9c00ff),
                                        width: 2),
                                  ),
                                  child: Text(
                                    "DATE",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      interest = 'DATE';
                                      _isInterestVisible=true;
                                      _isContinueVisible = true;
                                      _isTextAreaVisible = false;
                                    });

                                  },
                                ),
                              ),
                              Container(
                                width: 180,
                                child: FlatButton(
                                  color: Colors.white,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    side: BorderSide(
                                        color: const Color(0xff9c00ff),
                                        width: 2),
                                  ),
                                  child: Text(
                                    "MAKE FRIENDS",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      interest = 'MAKE FRIENDS';
                                      _isInterestVisible=true;
                                      _isContinueVisible = true;
                                      _isTextAreaVisible = false;
                                    });

                                  },
                                ),
                              ),
                              Container(
                                width: 180,
                                child: FlatButton(
                                  color: Colors.white,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    side: BorderSide(
                                        color: const Color(0xff9c00ff),
                                        width: 2),
                                  ),
                                  child: Text(
                                    "CONFESS",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      interest='CONFESS';
                                      _isInterestVisible=true;
                                      _isContinueVisible = true;
                                      _isTextAreaVisible = false;
                                    });

                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //Interest Answer
                    Visibility(
                      visible: _isInterestVisible,
                      child: ChatBubble(
                        clipper:
                            ChatBubbleClipper3(type: BubbleType.sendBubble),
                        alignment: Alignment.centerRight,
                        backGroundColor: Color(0xff9c00ff),
                        child: Container(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.7,
                            ),
                            child: Text(
                              interest,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                      ),
                    ),

                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 5,
                    ),

                    //Continue Button
                    Visibility(
                      visible: _isContinueVisible,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24.0),
                        child: Container(
                          width: 210.0,
//                          height: 46.0,
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
//                              BoxShadow(
//                                color: const Color(0x29000000),
//                                offset: Offset(0, 3),
//                                blurRadius: 3,
//                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: FlatButton(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              child: Text(
                                'CONTINUE',
                                style: TextStyle(
                                  fontFamily: 'Montserrat-SemiBold',
                                  fontSize: 18,
                                  color: const Color(0xffffffff),
//                                height: 2,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              onPressed: () async {
/* Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignIn()),
                            ); */ ////BUTTON ON PRESS
                              },
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 10,
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: _isTextAreaVisible,
                child: Padding(
                  padding: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical*0.4,left: SizeConfig.blockSizeHorizontal* 2,right: SizeConfig.blockSizeHorizontal* 2),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: new Container(
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          border: new Border.all(color: Colors.purple, width: 2.0),
                          borderRadius: new BorderRadius.circular(30.0)),
                      child: new TextFormField(
                        controller: replyText,
                        cursorColor: Colors.purple,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.purpleAccent),
                          hintText: "Type Something",
                          border: InputBorder.none,
                          suffixIcon: FlatButton(
                            child: Icon(
                              Icons.send,
                              color: Colors.purple,
                            ),
                            onPressed: () {
//                          if (_isInterestQVisible) {
//                            interest = replyText.text;
//                            print(interest);
//                            replyText.clear();
//
//                            setState(() {
//                              _isInterestVisible = true;
//                              _isContinueVisible = true;
//                            });
//                          } else if (_isOrientationQVisible) {
//                            orientation = replyText.text;
//                            print(orientation);
//                            replyText.clear();
//
//                            setState(() {
//                              _isInterestQVisible = true;
//                              _isOrientationVisible = true;
//                            });
//                          }
                              if (_isNicknameQVisible) {
                                _isTextAreaVisible = true;
                                nickname = replyText.text;
                                print(nickname);
                                replyText.clear();

                                setState(() {
                                  _isNicknameVisible = true;
                                  _isOrientationQVisible = true;
                                  _isTextAreaVisible=false;
                                });
                              }
//                          else if (_isBirthQVisible) {
//                            birthday = _formatdate;
//                            print(birthday);
//                            replyText.clear();
//
//                            setState(() {
//                              _isBirthVisible = true;
//                              _isNicknameQVisible = true;
//                            });
//                          } else if (_isGenderQVisible) {
//                            gender = replyText.text;
//                            print(gender);
//                            replyText.clear();
//
//                            setState(() {
//                              _isGenderVisible = true;
//                              _isBirthQVisible = true;
//
//                            });
//                          }
                                else {
                                name = replyText.text;
                                print(name);
                                replyText.clear();

                                setState(() {
                                  _isNameVisible = true;
                                  _isGenderQVisible = true;
                                  _isTextAreaVisible=false;
                                });
                              }

                              //FOR TESTING
                              /* setState(() {
                                _isNameVisible = false;
                                _isGenderQVisible = false;
                                _isGenderVisible = false;
                                _isBirthQVisible = false;
                                _isBirthVisible = false;
                                _isNicknameQVisible = false;
                                _isInterestQVisible = false;
                                _isOrientationQVisible = false;
                                _isContinueVisible = false;
                                _isNicknameVisible = false;
                                _isInterestVisible = false;
                                _isOrientationVisible = false;
                              }); */
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10

              ),
            ],
          )),
    );
  }
}
