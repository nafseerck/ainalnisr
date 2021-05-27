import 'package:ainalnisr/components/servicesbuttonbar.dart';
import 'package:flutter/material.dart';
import 'package:ainalnisr/ColorScheme.dart';

class CarpentryContracting extends StatefulWidget {
  @override
  _CarpentryContractingState createState() => _CarpentryContractingState();
}

class _CarpentryContractingState extends State<CarpentryContracting> {
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
                                  image: AssetImage('asset/image/8.jpg'),
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
                              "Carpentry Contracting",
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
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "CARPENTRY CONTRACTING",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            "The most common carpentry works and fixtures tasks include repairs and installation of hinges and handles, repairs of windows and glasses, trouble with doors, cabinets, kitchen shelves and repair of door locks. Our team can easily accomplish all types of tasks, right from small apartments to industrial level tasks. We provide complete renovation services for residential, commercial and retail projects. We undertake quality custom carpentry services and fixtures at reasonable and affordable rates.",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "FLOOR CONTRACTING",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            "Polished hard flooring eventually degrades overtime, especially with high volume traffic. Whether made up of natural stone or man-made stone, hard flooring requires proper cleaning and maintenance.Thorough hard floor cleaning needs more than just simple vacuuming or sweeping using soft bristle broom. Hard floors require specialized floor maintenance services performed by trusted cleaning professionals to keep a lasting impeccable appearance. With specialized floor maintenance from us your floors can retain its beautiful lustre and shine \n\nFlooring Contracting Services, specialize in commercial flooring. Our mission is to provide our customers with the most responsive, professional and innovative solutions available on the market today. Our staff and contractors are experienced and qualified in a range of small and large scale flooring services.  \n\nIf you need a small fixing or a large renovation to be carried out at your premises give us a call",
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
