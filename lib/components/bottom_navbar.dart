import 'package:ainalnisr/MainPage.dart';
import 'package:ainalnisr/components/search_box.dart';
import 'package:ainalnisr/screens/home/HomeMainScreen.dart';
import 'package:ainalnisr/screens/homepage.dart';
import 'package:ainalnisr/screens/profile/profilepage1.dart';
import 'package:ainalnisr/screens/search/searchpage.dart';
import 'package:ainalnisr/screens/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  final String recievedUserName;
  const BottomNavBar({
    Key key,
    this.recievedUserName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      // double.infinity means it cove the available width
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.11),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home_filled),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen(usernametext: 'Nafseer')),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.search_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPageFull()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.miscellaneous_services),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ServicesPagesFull()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePageFull()),
              );
            },
          ),
        ],
      ),
    );
  }
}
