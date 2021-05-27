import 'package:ainalnisr/main.dart';
import 'package:ainalnisr/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:ainalnisr/ColorScheme.dart';

class NextButton extends StatefulWidget {
  @override
  _NextButtonState createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 35.0),),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: purple),
                child: Text(
                  "Next",
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  void openCalendarPage() {
    Navigator.pushNamed(context, '/CalendarPage');
  }
}
