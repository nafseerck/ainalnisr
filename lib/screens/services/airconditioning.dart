import 'package:ainalnisr/components/bottom_navbar.dart';
import 'package:ainalnisr/components/servicesbuttonbar.dart';
import 'package:ainalnisr/main.dart';
import 'package:ainalnisr/screens/services/components/button.dart';
import 'package:flutter/material.dart';
import 'package:ainalnisr/ColorScheme.dart';

class AirConditioning extends StatefulWidget {
  @override
  _AirConditioningState createState() => _AirConditioningState();
}

class _AirConditioningState extends State<AirConditioning> {
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40)),
            color: Colors.white),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // SizedBox(
              //   height: 20,
              // ),
              Padding(
                padding: const EdgeInsets.only(top : 20.0),
                child: Row(
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
                                image: AssetImage('asset/image/11.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(top :12.0),
                            child: Text(
                              "Air Conditioning, Ventilation \n & Air Filtration System's \n Maintenance & Installation",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      "ABOUT",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(top : 15.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "We understand that finding a reputable HVAC professional is difficult. Our customers tell us that before that they experienced confusing quotations, shoddy work, when it came to their furnace and air conditioner needs. With years of experience in the field, we guarantee expert service, unbeatable pricing, and quick appointment arrivals. We are specialists in heating ventilation & cooling system providing comfort to the interior of your building or apartment whatever type of HVAC system you have. ",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
      bottomNavigationBar: ElectricFittingButtonNewBar(),

    );
  }
}
