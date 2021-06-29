import 'package:ainalnisr/components/servicesbuttonbar.dart';
import 'package:flutter/material.dart';
import 'package:ainalnisr/ColorScheme.dart';

class PlumbingAndSanitary extends StatefulWidget {
  @override
  _PlumbingAndSanitaryState createState() => _PlumbingAndSanitaryState();
}

class _PlumbingAndSanitaryState extends State<PlumbingAndSanitary> {
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
              height: MediaQuery.of(context).size.height,
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
                                  image: AssetImage('asset/image/3.jpg'),
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
                              "Plumbing & Sanitary \n Contracting",
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
                            "We provide a well-qualified plumbing technicians who are capable in solving all your plumbing issues and emergency plumbing situation. We installation, replacement, alteration, repair or maintenance of above ground pipework, fittings and fixtures which convey waste to the sanitary drainage system, water supply distribution pipes; plumbing fixtures and traps; soil, waste, and vent pipes; sanitary and building drains, including their respective connections, devices, water –treating equipment and appurtenances within the premises; and water-treating equipment. We aim to professional and efficient installation and maintenance solutions customized to suit all your requirements in an affordable price.",
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
