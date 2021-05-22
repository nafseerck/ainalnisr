import 'package:flutter/material.dart';
import 'package:ainalnisr/ColorScheme.dart';

class IconContainer extends StatefulWidget {
  @override
  _IconContainerState createState() => _IconContainerState();
}

class _IconContainerState extends State<IconContainer> {
  String img;
  String name;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
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


}
