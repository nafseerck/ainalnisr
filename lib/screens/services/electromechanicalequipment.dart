import 'package:ainalnisr/components/servicesbuttonbar.dart';
import 'package:ainalnisr/screens/services/components/button.dart';
import 'package:flutter/material.dart';
import 'package:ainalnisr/ColorScheme.dart';


class ElectroMechanicalEquipment extends StatefulWidget {
  @override
  _ElectroMechanicalEquipmentState createState() => _ElectroMechanicalEquipmentState();
}

class _ElectroMechanicalEquipmentState extends State<ElectroMechanicalEquipment> {
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
                                  image: AssetImage('asset/image/10.jpg'),
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
                              "Electro Mechanical Equipment \n Installation & Maintenance",
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
"Almost any single device with an electrical and mechanical component can be referred to as electromechanical (EM). You might even call an electric motor an electromechanical device, because it turns electricity into rotary (mechanical) motion. \n We know that any establishment requires efficient and safe electromechanical equipment operation. Since every establishment has different service needs,we offer flexible services to fit every application needed to your ES problem.Our technicians are dedicated to design, promote, produce and supply top quality and low-cost but effective jobs/works that fully conform to the agreed client requirements and specifications. The company has established and maintained a documented effective quality management system and that our customers are kept informed of mandatory codes and local requirements",                            style: TextStyle(
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
