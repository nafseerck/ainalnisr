import 'package:flutter/material.dart';

class SelectedCleaningText extends StatefulWidget {
  @override
  _SelectedCleaningTextState createState() => _SelectedCleaningTextState();
}

class _SelectedCleaningTextState extends State<SelectedCleaningText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 10.0),),

        Text("Select Your Service", style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600
        ),
        ),
      ],
    );

  }
}


class SelectedFrequencyText extends StatefulWidget {
  @override
  _SelectedFrequencyTextState createState() => _SelectedFrequencyTextState();
}

class _SelectedFrequencyTextState extends State<SelectedFrequencyText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 25.0),),
        Text("Select Your Time Slot", style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600
        ),
        ),
      ],
    );
  }
}


class SelectedExtrasTest extends StatefulWidget {
  @override
  _SelectedExtrasTestState createState() => _SelectedExtrasTestState();
}

class _SelectedExtrasTestState extends State<SelectedExtrasTest> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 30.0),),
        Text('Selected Extras',style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600
        ),
        ),
      ],
    );
  }
}

