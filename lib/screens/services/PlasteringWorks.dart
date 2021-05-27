import 'package:ainalnisr/ColorScheme.dart';
import 'package:ainalnisr/components/servicesbuttonbar.dart';
import 'package:flutter/material.dart';

class PlasteringWorks extends StatefulWidget {
  @override
  _PlasteringWorksState createState() => _PlasteringWorksState();
}

class _PlasteringWorksState extends State<PlasteringWorks> {
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
              // height: 600,
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

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
                                  image: AssetImage('asset/image/6.jpg'),
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
                              "Plastering Works",
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
                  Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "ABOUT",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
"Plastering is a layer provide over masonry or concrete surface for the purpose of protecting wall and other concrete element against the atmospheric effect. It also provides a finished surface over the masonry that is firm and smooth hence it enhances the appearance of the building. \n\n 	 Our team are skilled tradesmen in various specialized applications such as lathing and plastering on wooden timbers and dry lining plasterboard from preparation to application to finishing with the approved quality work in a very affordable rate",                            style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
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
