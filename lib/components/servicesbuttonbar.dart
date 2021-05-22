import 'package:ainalnisr/MainPage.dart';
import 'package:ainalnisr/components/search_box.dart';
import 'package:flutter/material.dart';
import 'package:ainalnisr/ColorScheme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ElectricFittingButtonNewBar extends StatelessWidget {
  const ElectricFittingButtonNewBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      // double.infinity means it cove the available width
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.11),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

          ElevatedButton(

            style: ElevatedButton.styleFrom(
              primary: Colors.red, // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: () { },
            child: Text('Book Now'),
          ),
          OutlineButton(
            shape: StadiumBorder(),
            highlightedBorderColor: Colors.red,
            borderSide: BorderSide(
                width: 3,
                color: Colors.white,
            ),
            onPressed: () { },
            child: Icon(
              Icons.phone,
              color: Colors.black,
              size: 24.0,
              semanticLabel: 'Call Now',
            ),
          )
        ],
      ),
    );
  }
}
