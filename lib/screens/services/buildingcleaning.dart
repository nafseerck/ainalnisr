import 'package:ainalnisr/components/callandmessage_services.dart';
import 'package:ainalnisr/components/servicelocator.dart';
import 'package:ainalnisr/components/servicesbuttonbar.dart';
import 'package:flutter/material.dart';
import 'package:ainalnisr/ColorScheme.dart';

class BuildingCleaning extends StatefulWidget {
  @override
  _BuildingCleaningState createState() => _BuildingCleaningState();
}

class _BuildingCleaningState extends State<BuildingCleaning> {


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
              // height: 1000,
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
                                  image: AssetImage('asset/image/7.jpg'),
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
                              "Building Cleaning \n Services",
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
"A building or any establishment should not only be functional, it should also be aesthetically pleasing as well. The appearance of your establishment can have a significant effect either on your health or on the success of your business. \n A clean building look more hospitable to prospective clients/guest and it also increases its real estate value. \n Take note that establishment are sensitive to elements such as dirt if it not properly maintained, they can have erosion, damp spots, molds, frost damage, and pollution from exhaust fumes, and acid rain, among others. And only experienced cleaners know what is best for your establishment since they have been exposed to different kind of dirt problem and knows how to deal with it. \n 	There are different categories with different approach in cleaning and our team can give you that service, from cleaning that needs extra care because it contains different sensitive product like electronics, commercial cleaning, construction, F&B and office cleaning. \n cYour establishment will become more presentable and clean for visitors. And all the people including you are free from germs and bacteria’s that cause diseases. ",
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

          ],
        ),
      ),
      bottomNavigationBar: ElectricFittingButtonNewBar(),

    );
  }
}
