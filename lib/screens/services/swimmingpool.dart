import 'package:ainalnisr/screens/services/components/button.dart';
import 'package:flutter/material.dart';
import 'package:ainalnisr/ColorScheme.dart';

class SwimmingPool extends StatefulWidget {
  @override
  _SwimmingPoolState createState() => _SwimmingPoolState();
}

class _SwimmingPoolState extends State<SwimmingPool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      appBar: AppBar(
        title: Text(
          "Ain Al Nisr ",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.20,
                              width: MediaQuery.of(context).size.width * 0.80,
                              decoration: BoxDecoration(
                                color: Color(0xffdfdeff),
                                image: DecorationImage(
                                  image: AssetImage('asset/image/4.jpg'),
                                  fit: BoxFit.cover,

                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Swimming Pool \n Maintenance",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "ABOUT",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          child: Text(
"The beauty of a Swimming pool lies in the clear water and cool blue sparkling look. A Swimming pool is often considered as a matter of pride, elegance and enhances the properties or establishment it could be villas, apartment building, hotel or resorts. Swimming pool maintenance is very important to retain not only its grandness and pristine look but also keeping it superficially clear and hygienically clean. Though most people consider the task of swimming pool maintenance as a tedious chores, it is often considered as expensive and hard work but not for us our expert team of cleaners are following general steps for swimming pool maintenance to our clients. \n Maintaining swimming pool is a process in a “top-down” method. Starting with all serviceable items at the water level, and then proceed to brushing, removing debris, vacuuming and finishing it with water chemical analysis to check the PH level, alkalinity, conductivity, total hardness of the water, etc. \n Our team maintain pools for individual residence, commercial buildings, educational institutions, facility management companies and other types of customers.",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SwimmingPoolButton(),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
