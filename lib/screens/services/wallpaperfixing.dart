import 'package:ainalnisr/components/servicesbuttonbar.dart';
import 'package:ainalnisr/screens/services/components/button.dart';
import 'package:flutter/material.dart';
import 'package:ainalnisr/ColorScheme.dart';

class WallpaperFixing extends StatefulWidget {
  @override
  _WallpaperFixingState createState() => _WallpaperFixingState();
}

class _WallpaperFixingState extends State<WallpaperFixing> {
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
              height: MediaQuery.of(context).size.height,
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
                                  image: AssetImage('asset/image/9.jpg'),
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
                              "Wallpaper Fixing",
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
                            "Wallpaper streamlines your entire aesthetic and pulls together your look adding a unique blend of color, texture and depth. This isn't to say we don't love paint. With so many amazing hues to choose from, paint can be a great option to add interesting character to your home. \n We offer wallpaper our customers the best Wallpaper Fixing / Wallpaper installation services in UAE at low cost, competitive and affordable installation rates. Wallpapers are one of the easiest and quickest solutions of renovating, designing and redecorating your villa, apartment, home or office with so much designs available in all shades, colors, designs and are compatible with almost everything. Our team are expert fixing wallpaper in your premises give us a call to prove to you our finished product.",
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
