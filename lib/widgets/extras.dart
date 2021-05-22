import 'package:ainalnisr/widgets/iconcontainer.dart';
import 'package:flutter/material.dart';
import 'package:ainalnisr/ColorScheme.dart';

class SelectedExtras extends StatefulWidget {
  @override
  _SelectedExtrasState createState() => _SelectedExtrasState();
}

class _SelectedExtrasState extends State<SelectedExtras> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 30.0),),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (){},
                child: extraWidget("fridge", "Inside Fridge", true),
              ),
              SizedBox(width: 10,),
              InkWell(
                child: extraWidget("organise", "Organise", false),
              ),
              SizedBox(width: 10,),
              InkWell(
                child: extraWidget("blind", "Small Blinds", false),
              ),
              SizedBox(width: 10,),

              InkWell(
                child: extraWidget("blind", "Small Blinds", false),
              ),
              SizedBox(width: 10,),

              InkWell(
                child: extraWidget("blind", "Small Blinds", false),
              ),
              SizedBox(width: 10,),

              InkWell(
                  child: extraWidget("blind", "Small Blinds", false),
              ),
              SizedBox(width: 10,),

              InkWell(
                  child: extraWidget("blind", "Small Blinds", false),
              ),

            ],
          ),
        ],
      ),
    );
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
        Padding(padding: EdgeInsets.only(top: 10.0),),
        Text(name, style: TextStyle(
            fontWeight: FontWeight.w500
        ),)
      ],
    );
  }
}
