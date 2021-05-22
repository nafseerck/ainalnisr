import 'package:ainalnisr/ColorScheme.dart';
import 'package:ainalnisr/main.dart';
import 'package:ainalnisr/screens/services/components/button.dart';
import 'package:flutter/material.dart';

class ElectricalFitting extends StatefulWidget {
  @override
  _ElectricalFittingState createState() => _ElectricalFittingState();
}

class _ElectricalFittingState extends State<ElectricalFitting> {
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
                                  image: AssetImage('asset/image/1.jpg'),
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
                              "Electrical Fitting \n & Fixture Services",
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
                            "If you are considering an electric repair installation and maintenance for your home, there are a few things you should be aware of; an electric repair installation & maintenance is no small easy task using skilled technicians for electrical fittings and fixtures is important as it is cheaper in the long run and safer.  A poor electrical fitting job can lead to smoke or fire outbreak that can cause harm to the occupants of a building or loss of lives and properties. We use only the best team of technicians for all electrical fixtures who have been properly trained and equipped to understand all technicalities that go with the job. And using the best material is just as important, this is why we do not compromise on the quality of materials used and offer only the best to every customer. \n Our services cover all kinds of projects from new installation to repairs of existing fittings, we are sure to meet every customer need. We can take on any job at any time and make every project a priority delivering premium quality jobs effortlessly. We follow all safety precautions to ensure that we deliver a safe, trusted, cheap and top quality service is our driving force and we aim to please every customer. All jobs are handled with importance and care ensuring safety to the customer and the environment as a whole.",
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
           ElectricalFittingButton(),
            SizedBox(
              height: 10.0,
            ),


          ],
        ),
      ),
    );
  }
}
