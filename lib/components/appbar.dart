import 'package:ainalnisr/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios_outlined),
      color: Colors.black,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage()),
        );
      },
    ),
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .title
            .copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "Ain Al Nisr",
            style: TextStyle(color: Colors.black),
          ),

        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("asset/image/icons/notification.svg"),
        color: Colors.black,
        onPressed: () {},
      ),
    ],
  );


}


