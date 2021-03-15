import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
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

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  File _image,_image1,_image2,_image3,_image4,_image5,_image6,_image7,_image8;
  final picker = ImagePicker();

  var pressed = false;
  var pressed1 = false;
  var pressed2 = false;
  var pressed3 = false;
  var pressed4 = false;
  var pressed5 = false;
  var pressed6= false;
  var pressed7 = false;
  var pressed8 = false;
  var pressed9 = false;
  var pressed10 = false;
  var pressed11 = false;

  int selectedIndex = 0;


  String DrinkingValue = 'Non-Drinker';
  String SmokingValue = 'Non-Smoker';
  String EatingValue = 'Vegetarian';

  Future getImage() async{
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedFile.path);
    });
}
  Future getImage1() async{
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image1 = File(pickedFile.path);
    });
  }
  Future getImage2() async{
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image2 = File(pickedFile.path);
    });
  }
  Future getImage3() async{
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image3 = File(pickedFile.path);
    });
  }
  Future getImage4() async{
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image4 = File(pickedFile.path);
    });
  }
  Future getImage5() async{
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image5 = File(pickedFile.path);
    });
  }
  Future getImage6() async{
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image6 = File(pickedFile.path);
    });
  }
  Future getImage7() async{
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image7 = File(pickedFile.path);
    });
  }
  Future getImage8() async{
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image8 = File(pickedFile.path);
    });
  }

  TextEditingController replyText = new TextEditingController();
  TextEditingController replyText1 = new TextEditingController();
  TextEditingController replyText2= new TextEditingController();
  TextEditingController replyText3 = new TextEditingController();
  TextEditingController replyText4 = new TextEditingController();
  TextEditingController replyText5 = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_ios, color: Colors.black54,size: 22,),
          title: Center(
            child: Text('Edit Profile',style: TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.w700
            ),),
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  GridView.count(
                      shrinkWrap: true,
                      primary: false,
                      padding: const EdgeInsets.all(10),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                    children: <Widget>[
                      GestureDetector(
                        onTap: getImage,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Colors.black12,
                          ),
                          child: _image == null ? Icon(FontAwesomeIcons.plus,color: Colors.purple,) : Image.file(_image),
                        ),
                      ),
                      GestureDetector(
                        onTap: getImage1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Colors.black12,
                          ),
                          child: _image1 == null ? Icon(FontAwesomeIcons.plus,color: Colors.purple,) : Image.file(_image1),
                        ),
                      ),
                      GestureDetector(
                        onTap: getImage2,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Colors.black12,
                          ),

                          child: _image2 == null ? Icon(FontAwesomeIcons.plus,color: Colors.purple,) : Image.file(_image2),
                        ),
                      ),
                      GestureDetector(
                        onTap: getImage3,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Colors.black12,
                          ),
                          child: _image3 == null ? Icon(FontAwesomeIcons.plus,color: Colors.purple,) : Image.file(_image3),
                        ),
                      ),
                      GestureDetector(
                        onTap: getImage4,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Colors.black12,
                          ),
                          child: _image4 == null ? Icon(FontAwesomeIcons.plus,color: Colors.purple,) : Image.file(_image4),
                        ),
                      ),
                      GestureDetector(
                        onTap: getImage5,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Colors.black12,
                          ),
                          child: _image5 == null ? Icon(FontAwesomeIcons.plus,color: Colors.purple,) : Image.file(_image5),
                        ),
                      ),
                      GestureDetector(
                        onTap: getImage6,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Colors.black12,
                          ),
                          child: _image6 == null ? Icon(FontAwesomeIcons.plus,color: Colors.purple,) : Image.file(_image6),
                        ),
                      ),
                      GestureDetector(
                        onTap: getImage7,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Colors.black12,
                          ),
                          child: _image7 == null ? Icon(FontAwesomeIcons.plus,color: Colors.purple,) : Image.file(_image7),
                        ),
                      ),
                      GestureDetector(
                        onTap: getImage8,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: new BorderRadius.circular(10.0),
                            color: Colors.black12,
                          ),
                          child: _image8 == null ? Icon(FontAwesomeIcons.plus,
                          color: Colors.purple,) : Image.file(_image8),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:32,top: 12,bottom: 8),
              child: Text("Tell us about yourself",
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:32,top: 12,bottom: 8),
              child: Text("Bio",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 32, top: 10, right: 32, bottom: 20),
              height: MediaQuery.of(context).size.height*0.15,
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
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new TextFormField(
                      controller: replyText,
                      cursorColor: Colors.purple,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.purpleAccent),
                        hintText: 'Lorem ipsum dolor sit amet, consectetur\n adipiscing \n elit. Cras nec tortor efficitur, feugiat purus\n vel, vehicula leo. ',

                        border: InputBorder.none,

                    ),
                  ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:32,top: 12,bottom: 8),
              child: Text("Made Up Name",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 32, top: 5, right: 32, bottom: 10),
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
                padding: const EdgeInsets.only(left: 12),
                child: new TextFormField(
                  controller: replyText1,
                  cursorColor: Colors.purple,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.purpleAccent),
                    hintText: 'XYZ',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.mode_edit, color: Colors.black54,size: 22),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:32,top: 12,bottom: 8),
              child: Text("Name",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 32, top: 5, right: 32, bottom: 10),
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
                padding: const EdgeInsets.only(left: 12),
                child: new TextFormField(
                  controller: replyText2,
                  cursorColor: Colors.purple,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.purpleAccent),
                    hintText: 'XYZ',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.mode_edit, color: Colors.black54,size: 22),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:32,top: 12,bottom: 8),
              child: Text("Date of Birth",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 32, top: 5, right: 32, bottom: 10),
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
                  '17/04/1999',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 18,
                    color: Colors.black38,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:32,top: 12,bottom: 8),
              child: Text("Star Sign",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 32, top: 5, right: 32, bottom: 10),
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
                padding: const EdgeInsets.only(left: 12),
                child: new TextFormField(
                  controller: replyText3,
                  cursorColor: Colors.purple,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.purpleAccent),
                    hintText: 'Aries',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.mode_edit, color: Colors.black54,size: 22),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:32,top: 12,bottom: 8),
              child: Text("Profession",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 32, top: 5, right: 32, bottom: 10),
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
                padding: const EdgeInsets.only(left: 12),
                child: new TextFormField(
                  controller: replyText4,
                  cursorColor: Colors.purple,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.purpleAccent),
                    hintText: 'Student',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.mode_edit, color: Colors.black54,size: 22),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:32,top: 12,bottom: 8),
              child: Text("Drinking",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 32, top: 5, right: 32, bottom: 10),
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
                  padding: const EdgeInsets.only(left: 12,right: 5),
                  child: new DropdownButtonFormField(
                    icon: Icon(Icons.keyboard_arrow_down,size: 30,color: Colors.black54,),
                    value: DrinkingValue,
                    items: <String>['Non-Drinker', 'Drinker']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),

                    onChanged: (String newValue) {
                      setState(() {
                        DrinkingValue = newValue;
                      });
                    },
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:32,top: 12,bottom: 8),
              child: Text("Smoking",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 32, top: 5, right: 32, bottom: 10),
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
                  padding: const EdgeInsets.only(left: 12,right: 5),
                  child:  DropdownButtonFormField<String>(
                    icon: Icon(Icons.keyboard_arrow_down,size: 30,color: Colors.black54,),
                    value: SmokingValue,
                    items: <String>['Non-Smoker', 'Smoker']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),

                    onChanged: (String newValue) {
                      setState(() {
                        SmokingValue = newValue;
                      });
                    },
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:32,top: 12,bottom: 8),
              child: Text("Eating",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 32, top: 5, right: 32, bottom: 10),
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
                  padding: const EdgeInsets.only(left: 12,right: 5),
                  child:  DropdownButtonFormField<String>(
                    icon: Icon(Icons.keyboard_arrow_down,size: 30,color: Colors.black54,),
                    value: EatingValue,
                    items: <String>['Non-Vegetarian', 'Vegetarian']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),

                    onChanged: (String newValue) {
                      setState(() {
                        EatingValue = newValue;
                      });
                    },
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:32,top: 12,bottom: 8),
              child: Text("Interest",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width*0.25,
                    decoration: BoxDecoration(
                      gradient: pressed ? LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          const Color(0xffee00ff),
                          const Color(0xff6600ff)
                        ],
                        stops: [0.0, 1.0],
                      ): LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          Colors.black12,
                          Colors.black12,
                        ],
                        stops: [0.0, 1.0],
                      ),
                    ),
                    child: Center(
                      child: Text("Cars",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: pressed ? Colors.white : Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  onPressed: (){
                    setState(() {
                      pressed = !pressed;
                    });
                  },
                ),

                FlatButton(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width*0.25,
                    decoration: BoxDecoration(
                      gradient: pressed1 ? LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          const Color(0xffee00ff),
                          const Color(0xff6600ff)
                        ],
                        stops: [0.0, 1.0],
                      ): LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          Colors.black12,
                          Colors.black12,
                        ],
                        stops: [0.0, 1.0],
                      ),
                    ),
                    child: Center(
                      child: Text("Animals",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: pressed1 ? Colors.white : Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  onPressed: (){
                    setState(() {
                      pressed1 = !pressed1;
                    });
                  },
                ),
                FlatButton(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width*0.25,
                    decoration: BoxDecoration(
                      gradient: pressed2 ? LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          const Color(0xffee00ff),
                          const Color(0xff6600ff)
                        ],
                        stops: [0.0, 1.0],
                      ): LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          Colors.black12,
                          Colors.black12,
                        ],
                        stops: [0.0, 1.0],
                      ),
                    ),
                    child: Center(
                      child: Text("Dancing",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: pressed2 ? Colors.white : Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  onPressed: (){
                    setState(() {
                      pressed2 = !pressed2;
                    });
                  },
                ),


              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width*0.25,
                    decoration: BoxDecoration(
                      gradient: pressed3 ? LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          const Color(0xffee00ff),
                          const Color(0xff6600ff)
                        ],
                        stops: [0.0, 1.0],
                      ): LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          Colors.black12,
                          Colors.black12,
                        ],
                        stops: [0.0, 1.0],
                      ),
                    ),
                    child: Center(
                      child: Text("Hiking",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: pressed3 ? Colors.white : Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  onPressed: (){
                    setState(() {
                      pressed3 = !pressed3;
                    });
                  },
                ),

                FlatButton(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width*0.58,
                    decoration: BoxDecoration(
                      gradient: pressed4 ? LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          const Color(0xffee00ff),
                          const Color(0xff6600ff)
                        ],
                        stops: [0.0, 1.0],
                      ): LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          Colors.black12,
                          Colors.black12,
                        ],
                        stops: [0.0, 1.0],
                      ),
                    ),
                    child: Center(
                      child: Text("Calligraphy",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: pressed4 ? Colors.white : Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  onPressed: (){
                    setState(() {
                      pressed4 = !pressed4;
                    });
                  },
                ),


              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width*0.25,
                    decoration: BoxDecoration(
                      gradient: pressed5 ? LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          const Color(0xffee00ff),
                          const Color(0xff6600ff)
                        ],
                        stops: [0.0, 1.0],
                      ): LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          Colors.black12,
                          Colors.black12,
                        ],
                        stops: [0.0, 1.0],
                      ),
                    ),
                    child: Center(
                      child: Text("Cooking",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: pressed5 ? Colors.white : Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  onPressed: (){
                    setState(() {
                      pressed5 = !pressed5;
                    });
                  },
                ),

                FlatButton(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width*0.58,
                    decoration: BoxDecoration(
                      gradient: pressed6 ? LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          const Color(0xffee00ff),
                          const Color(0xff6600ff)
                        ],
                        stops: [0.0, 1.0],
                      ): LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          Colors.black12,
                          Colors.black12,
                        ],
                        stops: [0.0, 1.0],
                      ),
                    ),
                    child: Center(
                      child: Text("Meditation",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: pressed6 ? Colors.white : Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  onPressed: (){
                    setState(() {
                      pressed6 = !pressed6;
                    });
                  },
                ),


              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width*0.25,
                    decoration: BoxDecoration(
                      gradient: pressed7 ? LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          const Color(0xffee00ff),
                          const Color(0xff6600ff)
                        ],
                        stops: [0.0, 1.0],
                      ): LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          Colors.black12,
                          Colors.black12,
                        ],
                        stops: [0.0, 1.0],
                      ),
                    ),
                    child: Center(
                      child: Text("Paint",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: pressed7 ? Colors.white : Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  onPressed: (){
                    setState(() {
                      pressed7 = !pressed7;
                    });
                  },
                ),

                FlatButton(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width*0.25,
                    decoration: BoxDecoration(
                      gradient: pressed8 ? LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          const Color(0xffee00ff),
                          const Color(0xff6600ff)
                        ],
                        stops: [0.0, 1.0],
                      ): LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          Colors.black12,
                          Colors.black12,
                        ],
                        stops: [0.0, 1.0],
                      ),
                    ),
                    child: Center(
                      child: Text("Chess",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: pressed8 ? Colors.white : Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  onPressed: (){
                    setState(() {
                      pressed8 = !pressed8;
                    });
                  },
                ),
                FlatButton(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width*0.25,
                    decoration: BoxDecoration(
                      gradient: pressed9 ? LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          const Color(0xffee00ff),
                          const Color(0xff6600ff)
                        ],
                        stops: [0.0, 1.0],
                      ): LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          Colors.black12,
                          Colors.black12,
                        ],
                        stops: [0.0, 1.0],
                      ),
                    ),
                    child: Center(
                      child: Text("Anime",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: pressed9 ? Colors.white : Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  onPressed: (){
                    setState(() {
                      pressed9 = !pressed9;
                    });
                  },
                ),


              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width*0.25,
                    decoration: BoxDecoration(
                      gradient: pressed10 ? LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          const Color(0xffee00ff),
                          const Color(0xff6600ff)
                        ],
                        stops: [0.0, 1.0],
                      ): LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          Colors.black12,
                          Colors.black12,
                        ],
                        stops: [0.0, 1.0],
                      ),
                    ),
                    child: Center(
                      child: Text("Tennis",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: pressed10 ? Colors.white : Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  onPressed: (){
                    setState(() {
                      pressed10 = !pressed10;
                    });
                  },
                ),

                FlatButton(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width*0.58,
                    decoration: BoxDecoration(
                      gradient: pressed11 ? LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          const Color(0xffee00ff),
                          const Color(0xff6600ff)
                        ],
                        stops: [0.0, 1.0],
                      ): LinearGradient(
                        begin: Alignment(-1.52, 1.0),
                        end: Alignment(1.13, -0.95),
                        colors: [
                          Colors.black12,
                          Colors.black12,
                        ],
                        stops: [0.0, 1.0],
                      ),
                    ),
                    child: Center(
                      child: Text("Learn New Language",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: pressed11 ? Colors.white : Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  onPressed: (){
                    setState(() {
                      pressed11 = !pressed11;
                    });
                  },
                ),


              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left:32,top: 16,bottom: 8),
              child: Text("Any Other Interests",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 32, top: 5, right: 32, bottom: 32),
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
                padding: const EdgeInsets.only(left: 12),
                child: new TextFormField(
                  controller: replyText5,
                  cursorColor: Colors.purple,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.purpleAccent),
                    hintText: 'Other Interests...',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.mode_edit, color: Colors.black54,size: 22),
                  ),
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
