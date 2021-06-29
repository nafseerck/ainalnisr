import 'package:ainalnisr/ColorScheme.dart';
import 'package:ainalnisr/components/appbar.dart';
import 'package:ainalnisr/components/homeScreenOnlyAppBar.dart';
import 'package:ainalnisr/helperfunctions/helper.dart';
import 'package:ainalnisr/screens/Login/components/bodynew.dart';
import 'package:ainalnisr/screens/profile/profilepage1.dart';
import 'package:ainalnisr/screens/services/buildingcleaning.dart';
import 'package:ainalnisr/screens/services/carpentrycontracting.dart';
import 'package:ainalnisr/screens/services/electricalfitting.dart';
import 'package:ainalnisr/screens/services/electromechanicalequipment.dart';
import 'package:ainalnisr/screens/services/swimmingpool.dart';
import 'package:ainalnisr/screens/services/wallpaperfixing.dart';
import 'package:ainalnisr/widgets/fadeanimations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:ainalnisr/components/bottom_navbar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ainalnisr/screens/Login/login_screen.dart';
class HomeScreen extends StatelessWidget {
  final String usernametext;

  HomeScreen({Key key, this.usernametext
  }): super(key: key);



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: homeScreenOnlyAppBar(context),
      body: MyHomePage(recievedUserName: usernametext,),
      bottomNavigationBar: BottomNavBar(recievedUserName: usernametext,),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String recievedUserName;


  MyHomePage({Key key, this.title, this.savedUserName, this.recievedUserName}) : super(key: key);
final String savedUserName ;
  final String title;



  @override
  _MyHomePageState createState() => _MyHomePageState();


}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 250.0,
                  width: double.infinity,
                  // color: purple,
                  color: Color(getColorHexFromStr('#06279c')),
                ),
                Positioned(
                  bottom: 50.0,
                  right: 100.0,
                  child: Container(
                    height: 400.0,
                    width: 400.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200.0),
                        color: Color(getColorHexFromStr('#4d91ff'))
                            .withOpacity(0.4)),
                  ),
                ),
                Positioned(
                  bottom: 100.0,
                  left: 150.0,
                  child: Container(
                      height: 300.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150.0),
                          color: Color(getColorHexFromStr('#0f50ba'))
                              .withOpacity(0.5))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 15.0),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 15.0),
                        SizedBox(height: 15.0),
                      ],
                    ),
                    SizedBox(height: 50.0),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      // child: Text('Hello,',
                        child: Text('Hello, ' + widget.recievedUserName,
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 28.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Looking for best services?',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 23.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 30),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F5F7),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          children: <Widget>[
                            SvgPicture.asset("asset/icons/search.svg"),
                            SizedBox(width: 14),
                            Text(
                              "Search for anything",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFFA0A5BD),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0)
                  ],
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  FadeAnimation(
                    1,
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        child: ServiceCategory(
                            isActive: true, title: 'Maintenance')),
                  ),
                  FadeAnimation(
                      1.3,
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfilePageFull()));
                          },
                          child: ServiceCategory(
                              isActive: false, title: 'Fixing'))),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePageFull()));
                    },
                    child: FadeAnimation(1.4,
                        ServiceCategory(isActive: false, title: 'Installing')),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePageFull()));
                    },
                    child: FadeAnimation(1.5,
                        ServiceCategory(isActive: false, title: 'Service')),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ElectricalFitting()));
                        },
                        child: FadeAnimation(
                            1.4,
                            foodItem('asset/image/1.jpg', "AED 15",
                                "Electrical Fitting")),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CarpentryContracting()));
                        },
                        child: FadeAnimation(
                            1.5,
                            foodItem('asset/image/2.jpg', 'AED 20',
                                "Carpentary Contracting")),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WallpaperFixing()));
                        },
                        child: FadeAnimation(
                            1.6,
                            foodItem('asset/image/3.jpg', "AED 25",
                                "Wallpaper Fixing")),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SwimmingPool()));
                        },
                        child: FadeAnimation(
                            1.6,
                            foodItem('asset/image/4.jpg', "AED 30",
                                "Swimming Pool Maintenance")),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BuildingCleaning()));
                        },
                        child: FadeAnimation(
                            1.6,
                            foodItem('asset/image/7.jpg', "AED 45",
                                "Building Cleaning")),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BuildingCleaning()));
                        },
                        child: FadeAnimation(
                            1.6,
                            foodItem('asset/image/6.jpg', "AED 40",
                                "Building Cleaning")),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  Widget ServiceCategory({isActive, title}) {
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.5 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.yellow[700] : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
          child: Text(
            title,
            style: TextStyle(
                color: isActive ? Colors.black45 : Colors.black,
                fontSize: 18,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal),
          ),
        ),
      ),
    );
  }

  Widget PlaceOrderButton() {
    return AspectRatio(
      aspectRatio: 3,
      child: Container(
        margin: EdgeInsets.only(right: 10, top: 10),
        decoration: BoxDecoration(
          color: Colors.yellow[700],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Align(
          child: Text(
            "Place Order",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget foodItem(image, price, food) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width - 20,
      child: GestureDetector(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              )),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(begin: Alignment.bottomCenter, stops: [
                  .2,
                  .9
                ], colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.3),
                ])),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        price,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        food,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  int getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }








}


class Constants{
  static String myName =  "";
}
