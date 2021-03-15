import 'package:UniQ/views/Signin.dart';
import 'package:UniQ/views/Signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_3.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:adobe_xd/page_link.dart';

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

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TextEditingController replyText = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      width: 360,
      height: 812,
    );

    SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      title: 'UniQ',
      home: Scaffold(
          /* appBar: PreferredSize(
            preferredSize: Size.fromHeight(SizeConfig.blockSizeVertical * 10),
            child: AppBar(
              backgroundColor: const Color(0xff9c00ff),
              shape: const MyShapeBorder(curveHeight),
              elevation: 0,
              title: Center(
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                    ),
                    Text("Annie",
                        style: TextStyle(fontFamily: 'Segoe UI', fontSize: 18))
                  ],
                ),
              ),
            ),
          ), */
          //resizeToAvoidBottomPadding: false,
          backgroundColor: const Color(0xffffffff),
          body: Stack(
            children: <Widget>[
              SingleChildScrollView(
                reverse: true,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: SizeConfig.blockSizeHorizontal * 13,
                    ),
//
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 20,
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

                    SizedBox(height: SizeConfig.blockSizeVertical * 2),

                    //Name
                    ChatBubble(
                      clipper: ChatBubbleClipper3(type: BubbleType.sendBubble),
                      alignment: Alignment.centerRight,
                      backGroundColor: Color(0xff9c00ff),
                      child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.7,
                          ),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ornare, augue in molestie iaculis, orci metus finibus sapien, sed feugiat nisi est vitae lacus. Nulla sed nibh vel odio venenatis gravida ut quis magna. Integer non dolor in quam sagittis sodales at nec libero. Nulla tristique ultrices risus, ac euismod libero lobortis a. Nullam leo libero, egestas eget enim vitae, pulvinar mattis metus. Nulla sodales velit et auctor elementum. Vestibulum est lorem, convallis eget orci a, accumsan cursus tellus. Vestibulum rutrum malesuada rutrum. Maecenas sagittis eros nec risus posuere, sit amet sagittis lorem hendrerit. Sed venenatis turpis eget dapibus pellentesque. Vivamus vulputate dapibus tempus. Ut placerat bibendum turpis, nec pellentesque arcu aliquam eget. Sed dapibus, nibh a porttitor venenatis, mauris enim faucibus arcu, vel tincidunt purus metus a augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse ante metus, interdum vitae leo vitae, consectetur rhoncus odio. Vivamus id magna non odio blandit euismod aliquam non ante. Proin facilisis orci sed massa ornare, nec tempus purus pretium. Phasellus sodales elit ut diam viverra faucibus. Donec varius elit eget fringilla luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.",
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Lato'),
                          )),
                    ),

                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 10,
                    ),
                  ],
                ),
              ),
              /* Transform.translate(
                offset: Offset(80.w, 620.h),
                child: FlatButton(
                  child: Icon(
                    Icons.attach_file,
                    color: Colors.purple,
                  ),
                  onPressed: () {},
                ),
              ), */
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        new Image.asset(
                          'assets/images/AppBar2.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: PageLink(
                              child: Container(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: new Icon(Icons.navigate_before,
                                      size: 40, color: Colors.white)),
                              links: [
                                PageLinkInfo(
                                  transition: LinkTransition.Fade,
                                  ease: Curves.easeOut,
                                  duration: 0.3,
                                  pageBuilder: () => SignIn(),
                                ),
                              ],
                            )),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                              padding: EdgeInsets.fromLTRB(0, 15, 10, 0),
                              child: new Icon(FontAwesomeIcons.heart,
                                  size: 28, color: Colors.white)),
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 38,
                              ),
                            )),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
                                child: Text(
                                  "Madeup name",
                                  style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 21,
                                      color: Colors.white),
                                ))),
                      ],
                    ),
                    new Container(
                        height: 55.0,
                        decoration:
                            new BoxDecoration(color: Colors.white, boxShadow: [
                          /* BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5.0,
                              offset: Offset(0.0, 25)), */
                        ]),
                        child: new Container(
                          width: SizeConfig.screenWidth,
                          child: Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 5, 0, 4),
                                        child: Image.asset(
                                            'assets/images/ClockGreen.png'),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 4, 22, 4),
                                        child: Text(
                                          "59:00",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Segoe UI',
                                              color: Colors.green),
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: new BoxDecoration(
                                    border: new Border.all(
                                        color: Colors.green, width: 1.0),
                                    borderRadius: BorderRadius.only(
                                        topRight: const Radius.circular(20),
                                        bottomRight: const Radius.circular(20)),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(7, 8, 45, 8),
                                    child: Container(
                                      decoration: new BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.all(
                                              const Radius.circular(40))),
                                      child: Text(
                                        "  1  ",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Segoe UI',
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  decoration: new BoxDecoration(
                                    border: new Border.all(
                                        color: Colors.black, width: 1.0),
                                    borderRadius: BorderRadius.only(
                                        topLeft: const Radius.circular(20),
                                        bottomLeft: const Radius.circular(20)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: new Container(
                  //alignment: Alignment.center,
                  height: 55.0,
                  decoration:
                      new BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(color: Colors.black26, blurRadius: 20.0),
                  ]),
                  child: new TextField(
                    controller: replyText,
                    cursorColor: Colors.purple,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.purpleAccent),
                      hintText: "Type your message",
                      hintStyle: TextStyle(fontFamily: 'Lato'),
                      border: InputBorder.none,
                      prefixIcon: FlatButton(
                        child: Icon(
                          Icons.insert_emoticon,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          //FlatButton(
                          //child:
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.attach_file,
                              color: Colors.black,
                            ),
                          ),
                          //onPressed: () {},
                          //),
                          //FlatButton(
                          //child:
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.mic,
                              color: Colors.purple,
                            ),
                          ),
                          //onPressed: () {},
                          //),
                          //FlatButton(
                          //child:
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                begin: Alignment(-1.35, 2.14),
                                end: Alignment(1.13, -2.03),
                                colors: [
                                  const Color(0xffee00ff),
                                  const Color(0xff6600ff)
                                ],
                                stops: [0.0, 1.0],
                              )),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                                child: Icon(
                                  FontAwesomeIcons.paperPlane,
                                  size: 19,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          //onPressed: () {},
                          //)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
