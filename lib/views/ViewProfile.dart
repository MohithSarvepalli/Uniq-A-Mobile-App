import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';



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


class ViewProfile extends StatefulWidget {
  @override
  _ViewProfileState createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> with SingleTickerProviderStateMixin{


  final iconList = <IconData>[
    Icons.home,
    Icons.message,
    Icons.language,
  ];
  int selectedIndex = 0;

  int index=3;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,

        body :
            ListView(

              children: <Widget>[
                Stack(
                  children: <Widget>[
                    ClipPath(
                      clipper: OvalBottomBorderClipper(),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: (MediaQuery.of(context).size.height)/2,
//                        decoration: BoxDecoration(
//                          boxShadow: [
//                            BoxShadow(
//                              color: Colors.grey.withOpacity(0.5),
//                              spreadRadius: 7,
//                              blurRadius: 5,
//                              offset: Offset(0, 3), // changes position of shadow
//                            ),
//                          ],
//                        ),
                        child:   Image.asset(
                          'assets/images/img.jpg',
//                          height: SizeConfig.blockSizeVertical*1,
//                          width: SizeConfig.blockSizeHorizontal*1,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.blockSizeVertical*41,
                        right: SizeConfig.blockSizeHorizontal*6,
                        child: ClipOval(
                          child: Material(
                            color: const Color(0xff9c00ff), // button color
                            child: InkWell(

                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent, // inkwell color
                              child: SizedBox(
                                width: SizeConfig.blockSizeHorizontal*16,
                                height: SizeConfig.blockSizeHorizontal*16,
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: SizeConfig.blockSizeHorizontal*10,
                                ),
                              ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    ),

                    Positioned(
                      top: SizeConfig.blockSizeVertical*41,
                      left: SizeConfig.blockSizeHorizontal*6,
                      child: ClipOval(
                        child: Material(
                          color: Colors.white, // button color
                          child: InkWell(
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent, // inkwell color
                            child: SizedBox(
                              width: SizeConfig.blockSizeHorizontal*16,
                              height:SizeConfig.blockSizeHorizontal*16,
                              child: Icon(
                                Icons.settings,
                                color: Colors.black38,
                                size: SizeConfig.blockSizeHorizontal*10,
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: SizeConfig.blockSizeVertical * 3,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'XYZ, 21',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 38,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.check_circle,
                        color: Colors.blue,
                        size: 30,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.business_center,
                            size: 20,
                            color: Colors.black38,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Student',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Segoe UI',
                              color: Colors.black54,
                            ),
                          )
                        ],
                      )
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 20,
                            color: Colors.black38,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'less than a kilometer away',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Segoe UI',
                              color: Colors.black54,
                            ),
                          )
                        ],
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14.0,left: 16.0),
                  child: Text(
                    'About Me',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20,
                      color: Colors.black38,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 20),
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 4,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing \nelit. Cras nec tortor efficitur, feugiat purus\n vel, vehicula leo. ',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),

                // Start Sign


                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Star sign',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20,
                      color: Colors.black38,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 20),
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4)
                    ),
                  ),
//
                  child: Padding(
                    padding: const EdgeInsets.only(left:10,top: 8,bottom: 8),
                    child: Text(
                      'Aries',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Drinking',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20,
                      color: Colors.black38,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 20),
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4)
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:10,top: 8,bottom: 8),
                    child: Text(
                      'Non-Drinker',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Smoking',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20,
                      color: Colors.black38,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 20),
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4)
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:10,top: 8,bottom: 8),
                    child: Text(
                      'Non-Smoker',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Eating',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20,
                      color: Colors.black38,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 20),
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4)
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:10,top: 8,bottom: 8),
                    child: Text(
                      'Vegetarian',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Interest',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20,
                      color: Colors.black38,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 40),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton(
                          color: const Color(0xff9c00ff),
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Text(
                              "Hiking",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Lato',
                                fontSize: 18,
                              ),
                            ),
                          ),
                          onPressed:(){

                          },
                        ),
                        FlatButton(
                          color: const Color(0xff9c00ff),
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Text(
                              "Dancing",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Lato',
                                fontSize: 18,
                              ),
                            ),
                          ),
                          onPressed:(){

                          },
                        ),

                        FlatButton(
                          color: const Color(0xff9c00ff),
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Text(
                              "Animals",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Lato',
                                fontSize: 18,
                              ),
                            ),
                          ),
                          onPressed:(){

                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
        bottomNavigationBar: FFNavigationBar(
          theme: FFNavigationBarTheme(
            barBackgroundColor: Colors.white,
            selectedItemBorderColor: Colors.white,
            selectedItemBackgroundColor: const Color(0xff9c00ff),
            selectedItemIconColor: Colors.white,
            selectedItemLabelColor: Colors.black,
            showSelectedItemShadow: false,
            barHeight: 70,
          ),
          selectedIndex: selectedIndex,
          onSelectTab: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            FFNavigationBarItem(
              iconData: Icons.home,
              label: ' ',
            ),
            FFNavigationBarItem(
              iconData: Icons.message,
              label: ' ',
//              selectedBackgroundColor: Colors.orange,
            ),
            FFNavigationBarItem(
              iconData: Icons.language,
              label: ' ',
//              selectedBackgroundColor: Colors.purple,
            ),
            FFNavigationBarItem(
              iconData: Icons.person,
              label: ' ',
//              selectedBackgroundColor: Colors.blue,
            ),


          ],
        ),
      ),
    );
  }
}



class OvalBottomBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(
        size.width - size.width / 4, size.height, size.width, size.height - 65);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

