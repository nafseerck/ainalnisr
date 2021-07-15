import 'package:ainalnisr/components/servicelocator.dart';
import 'package:ainalnisr/screens/Login/components/bodynew.dart';
import 'package:ainalnisr/screens/Login/login_screen.dart';
import 'package:ainalnisr/screens/Signup/signup_screen.dart';
import 'package:ainalnisr/screens/homepage.dart';
import 'package:ainalnisr/screens/splashscreenregister.dart';
import 'package:flutter/material.dart';
import 'package:ainalnisr/ColorScheme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get_it/get_it.dart';
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
        '/HomeScreen' : (context)=>SplashScreenRegisterAndLogin(),
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(

        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: 400,
              height: 150,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/image/logo.png')
                  )
              ),
            ),
            // SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(top: 1.0),
              child: Text("Best Services\nAt Your Doorstep", style: TextStyle(
                  fontSize: 38,
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
              ), textAlign: TextAlign.center,),
            ),
            SizedBox(height: 15,),
            Text(
              "We provide every solutions for Your Place, whether it's a Home or Office We are here to Serve you",
              style: TextStyle(
                fontSize: 20,
                color: Colors.pink,
                fontWeight: FontWeight.w800,

              ), textAlign: TextAlign.center,),
            Container(
                margin: EdgeInsets.only(top: 1.0),
                child: SizedBox(height: 10,)),
            Container(
              height: 310,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'asset/image/bgsplash.jpg',
                    ),

                    fit: BoxFit.cover
                ),
              ),
            ),
SizedBox(
  height: 10.0,
),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.red,
                    ),
                    child: Text('Register', style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                    ),),
                  ),
                ),
                SizedBox(width: 5.0,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.yellow
                    ),
                    child: Text('Login', style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                    ),),
                  ),
                ),


              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(usernametext: "Guest",)));
              },
              child: Text(
                "Skip this Step",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,

                ), textAlign: TextAlign.center,),
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