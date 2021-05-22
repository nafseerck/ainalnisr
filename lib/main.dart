import 'package:ainalnisr/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:ainalnisr/ColorScheme.dart';
import 'MainPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'ubuntu',
      ),
      home: MyHomePage(),
      routes: {
        '/MainPage' : (context)=>MainPage(),
        '/HomeScreen' : (context)=>HomeScreen(),
      },
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: 200,
              height: 60,
              margin: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/image/logo.png')
                  )
              ),
            ),
            SizedBox(height: 30,),
            Text("Best Services\nAt Your Doorstep", style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.w900
            ), textAlign: TextAlign.center,),
            SizedBox(height: 30,),
            Text(
              "We provide every solutions for Your Place, whether it's a Home or Office We are here to Serve you",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w400,

              ), textAlign: TextAlign.center,),
            SizedBox(height: 60,),
            Container(
              height: 350,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'asset/image/splash.png',
                    ),

                    fit: BoxFit.cover
                ),
              ),
            ),
SizedBox(
  height: 15.0,
),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: openHomeScreen,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.white
                    ),
                    child: Text('Continue..', style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: purple
                    ),),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }

  void openMainPage() {
    Navigator.pushNamed(context, '/MainPage');
  }

  void openHomeScreen() {
    Navigator.pushNamed(context, '/HomeScreen');
  }
}