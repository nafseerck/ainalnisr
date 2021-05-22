import 'package:ainalnisr/button/button.dart';
import 'package:ainalnisr/main.dart';
import 'package:ainalnisr/widgets/services.dart';
import 'package:ainalnisr/widgets/extras.dart';
import 'package:ainalnisr/widgets/frequency.dart';
import 'package:ainalnisr/widgets/selectedtext.dart';
import 'package:flutter/material.dart';
import 'package:ainalnisr/CalendarPage.dart';
import 'package:ainalnisr/ColorScheme.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'ubuntu',
      ),

      debugShowCheckedModeBanner: false,
      home: mainPage(),
      routes: {
        '/CalendarPage' : (context) => CalendarPage(),
        '/MainPage' : (context) => mainPage(),
      },
    );
  }
}
class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  String selectedType = "initial";
  String selectedFrequency = "monthly";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_outlined,), onPressed: openCalendarPage),
        title: Text("Your Plan", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700
        ),),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          color: Colors.white
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectedCleaningText(),
              SelectedService(),
              SelectedFrequencyText(),
              SelectFrequency(),
              SelectedExtrasTest(),
              SelectedExtras(),
              NextButton(),
            ],
          ),
        ),
      ),
    );
  }
  void changeCleaningType(String type)
  {
    selectedType = type;
    setState(() {

    });
  }
  void changeFrequency(String frequency)
  {
    selectedFrequency = frequency;
    setState(() {

    });
  }
  Column extraWidget(String img, String name, bool isSelected)
  {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: purple
              ),
              child: Container(
                margin: EdgeInsets.all(17),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/image/icons/$img.png'),
                    fit: BoxFit.contain
                  )
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: (isSelected == true) ? Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white
                ),
                child: Center(
                  child: Icon(
                    Icons.check_circle,
                    color: pink,
                  ),
                ),
              ):Container(),
            ),
          ],
        ),
        SizedBox(height: 5,),
        Text(name, style: TextStyle(
          fontWeight: FontWeight.w500
        ),)
      ],
    );
  }
  void openCalendarPage()
  {
    Navigator.pushNamed(context, '/CalendarPage');
  }
  void openMainPage()
  {
    Navigator.pushNamed(context, '/MainPage');
  }

}

