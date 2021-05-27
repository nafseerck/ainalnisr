import 'package:ainalnisr/screens/Signup/components/bodynew.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class SplashScreenRegisterAndLogin extends StatefulWidget {
  @override
  _SplashScreenRegisterAndLoginState createState() => _SplashScreenRegisterAndLoginState();
}

class _SplashScreenRegisterAndLoginState extends State<SplashScreenRegisterAndLogin> {
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
              margin: EdgeInsets.only(top: 50),
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
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.blue
                    ),
                    child: Text('Continue..', style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
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
}
