import 'package:flutter/material.dart';
import 'package:ainalnisr/ColorScheme.dart';


class SelectFrequency extends StatefulWidget {
  @override
  _SelectFrequencyState createState() => _SelectFrequencyState();
}

class _SelectFrequencyState extends State<SelectFrequency> {
  String selectedFrequency = "firstslot";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 20.0),),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){changeFrequency("firstslot");},
              child: Container(
                height: 50,
                width: 110,
                decoration: (selectedFrequency == "firstslot") ? BoxDecoration(
                    color: pink,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ) : BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.3)),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Center(
                  child: Text("9AM - 12PM", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: (selectedFrequency == "firstslot") ? Colors.white : Colors.black
                  ),),
                ),
              ),
            ),
            InkWell(
              onTap: (){changeFrequency("secondslot");},
              child: Container(
                height: 50,
                width: 110,
                decoration: (selectedFrequency == "secondslot") ? BoxDecoration(
                    color: pink,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ) : BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.3)),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Center(
                  child: Text("1PM - 4PM", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: (selectedFrequency == "secondslot") ? Colors.white : Colors.black
                  ),),
                ),
              ),
            ),
            InkWell(
              onTap: (){changeFrequency("thirdslot");},
              child: Container(
                height: 50,
                width: 110,
                decoration: (selectedFrequency == "thirdslot") ? BoxDecoration(
                    color: pink,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ) : BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.3)),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Center(
                  child: Text("6PM - 10PM", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: (selectedFrequency == "thirdslot") ? Colors.white : Colors.black
                  ),),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  void changeFrequency(String frequency)
  {
    selectedFrequency = frequency;
    setState(() {

    });
  }
}
