import 'package:flutter/material.dart';

class SelectedService extends StatefulWidget {
  @override
  _SelectedServiceState createState() => _SelectedServiceState();
}

class _SelectedServiceState extends State<SelectedService> {
  String selectedType = "electricalfitting";
  String selectedFrequency = "monthly";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 25.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  changeCleaningType("electricalfitting");
                },
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.43,
                      decoration: BoxDecoration(
                        color: Color(0xffdfdeff),
                        image: DecorationImage(
                          image: AssetImage('asset/image/img1.png'),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "Electrical Fitting \n & Fixture Services",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededed),
                      ),
                      child: (selectedType == "electricalfitting")
                          ? Icon(
                              Icons.check_circle,
                              color: Colors.red,
                              size: 30,
                            )
                          : Container(),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  changeCleaningType("falseceiling");
                },
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.43,
                      decoration: BoxDecoration(
                        color: Color(0xffdfdeff),
                        image: DecorationImage(
                          image: AssetImage('asset/image/img2.png'),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "False Ceiling \n & Light Partitions",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededed),
                      ),
                      child: (selectedType == "falseceiling")
                          ? Icon(
                              Icons.check_circle,
                              color: Colors.red,
                              size: 30,
                            )
                          : Container(),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: openCalendarPage,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.43,
                      decoration: BoxDecoration(
                        color: Color(0xffdfdeff),
                        image: DecorationImage(
                          image: AssetImage('asset/image/img2.png'),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "Plumbing \n & Sanitary Contracting",
                      style: TextStyle(fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    InkWell(
                      onTap: () {
                        changeCleaningType("plumbing");
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffededed),
                        ),
                        child: (selectedType == "plumbing")
                            ? Icon(
                                Icons.check_circle,
                                color: Colors.red,
                                size: 30,
                              )
                            : Container(),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  changeCleaningType("swimmingpool");
                },
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.43,
                      decoration: BoxDecoration(
                        color: Color(0xffdfdeff),
                        image: DecorationImage(
                          image: AssetImage('asset/image/img2.png'),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "Swimming Pool \n maintenance",
                      style: TextStyle(fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededed),
                      ),
                      child: (selectedType == "swimmingpool")
                          ? Icon(
                              Icons.check_circle,
                              color: Colors.red,
                              size: 30,
                            )
                          : Container(),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  changeCleaningType("painting");
                },
                child: Column(
                  children: [
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width * 0.43,
                      decoration: BoxDecoration(
                        color: Color(0xffdfdeff),
                        image: DecorationImage(
                          image: AssetImage('asset/image/img2.png'),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "Painting \n & Contracting",
                      style: TextStyle(fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededed),
                      ),
                      child: (selectedType == "painting")
                          ? Icon(
                              Icons.check_circle,
                              color: Colors.red,
                              size: 30,
                            )
                          : Container(),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  changeCleaningType("plastering");
                },
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.43,
                      decoration: BoxDecoration(
                        color: Color(0xffdfdeff),
                        image: DecorationImage(
                          image: AssetImage('asset/image/img2.png'),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "Plastering \n Works",
                      style: TextStyle(fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededed),
                      ),
                      child: (selectedType == "plastering")
                          ? Icon(
                              Icons.check_circle,
                              color: Colors.red,
                              size: 30,
                            )
                          : Container(),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  changeCleaningType("buildingcleaning");
                },
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.43,
                      decoration: BoxDecoration(
                        color: Color(0xffdfdeff),
                        image: DecorationImage(
                          image: AssetImage('asset/image/img2.png'),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "Building Cleaning \n Services",
                      style: TextStyle(fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededed),
                      ),
                      child: (selectedType == "buildingcleaning")
                          ? Icon(
                              Icons.check_circle,
                              color: Colors.red,
                              size: 30,
                            )
                          : Container(),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  changeCleaningType("carpentry");
                },
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.43,
                      decoration: BoxDecoration(
                        color: Color(0xffdfdeff),
                        image: DecorationImage(
                          image: AssetImage('asset/image/img2.png'),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "Carpentry  \n & Floor Contracting",
                      style: TextStyle(fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededed),
                      ),
                      child: (selectedType == "carpentry")
                          ? Icon(
                              Icons.check_circle,
                              color: Colors.red,
                              size: 30,
                            )
                          : Container(),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  changeCleaningType("wallpaper");
                },
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.43,
                      decoration: BoxDecoration(
                        color: Color(0xffdfdeff),
                        image: DecorationImage(
                          image: AssetImage('asset/image/img2.png'),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "Wallpaper \n Fixing",
                      style: TextStyle(fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededed),
                      ),
                      child: (selectedType == "wallpaper")
                          ? Icon(
                              Icons.check_circle,
                              color: Colors.red,
                              size: 30,
                            )
                          : Container(),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  changeCleaningType("electromechanical");
                },
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.50,
                      decoration: BoxDecoration(
                        color: Color(0xffdfdeff),
                        image: DecorationImage(
                          image: AssetImage('asset/image/img2.png'),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "Electro Mechanical Equipment \n Installation & Maintenance",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededed),
                      ),
                      child: (selectedType == "electromechanical")
                          ? Icon(
                              Icons.check_circle,
                              color: Colors.red,
                              size: 30,
                            )
                          : Container(),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  changeCleaningType("airconditioning");
                },
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.65,
                      decoration: BoxDecoration(
                        color: Color(0xffdfdeff),
                        image: DecorationImage(
                          image: AssetImage('asset/image/img2.png'),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      "Air Conditioning, Ventilations & Air Filtration \n  System's Installation & Maintenance",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffededed),
                      ),
                      child: (selectedType == "airconditioning")
                          ? Icon(
                              Icons.check_circle,
                              color: Colors.red,
                              size: 30,
                            )
                          : Container(),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void changeCleaningType(String type) {
    selectedType = type;
    setState(() {});
  }

  void changeFrequency(String frequency) {
    selectedFrequency = frequency;
    setState(() {});
  }

  void openCalendarPage() {
    Navigator.pushNamed(context, '/CalendarPage');
  }
}
