import 'package:ainalnisr/screens/services/components/button.dart';
import 'package:flutter/material.dart';
import 'package:ainalnisr/ColorScheme.dart';

class PaintingContracting extends StatefulWidget {
  @override
  _PaintingContractingState createState() => _PaintingContractingState();
}

class _PaintingContractingState extends State<PaintingContracting> {
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
                                  image: AssetImage('asset/image/5.jpg'),
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
"Painting Contracting",                              style: TextStyle(
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
"Painting give house/establishment a long life and adding colors or give beauty makeover. There are lot many paint quality which can be used to protect your house/ establishment for a long time from stain, mud, sunlight, rain, dirt etc. \n We provide the best home painting services in Dubai. We specialize and expert colour consulting, glossy or matt for your interior and exterior wall/ceiling painting, furniture & wood painting and much more. We also assist you in painting repair and maintenance such as fixing of discolorations, peeling, dirt, cracks and screw holes in the internal and external walls. We have a team of best painters so be assured that your painting job is done in a quality and time-bound manner. We are experts and have years of experience in this field so the best quality painting services are guaranteed. We use high-grade paints, emulsions, and durable to carry out our painting services for an enhanced experience that gives your home a fresh new look whether you are looking for interior or exterior wall/ceiling painting services, we do it all at affordable prices. ",                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            PaintingButton(),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
