import 'package:ainalnisr/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ainalnisr/ColorScheme.dart';

AppBar homeScreenOnlyAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Color(getColorHexFromStr('#0f50ba')),
    elevation: 0,

    title: RichText(
      textAlign: TextAlign.right,
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .title
            .copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "Home",
            style: TextStyle(color: Colors.black,),
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


int getColorHexFromStr(String colorStr) {
  colorStr = "FF" + colorStr;
  colorStr = colorStr.replaceAll("#", "");
  int val = 0;
  int len = colorStr.length;
  for (int i = 0; i < len; i++) {
    int hexDigit = colorStr.codeUnitAt(i);
    if (hexDigit >= 48 && hexDigit <= 57) {
      val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
    } else if (hexDigit >= 65 && hexDigit <= 70) {
      // A..F
      val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
    } else if (hexDigit >= 97 && hexDigit <= 102) {
      // a..f
      val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
    } else {
      throw new FormatException("An error occurred when converting a color");
    }
  }
  return val;
}

