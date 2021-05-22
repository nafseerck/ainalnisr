import 'package:ainalnisr/components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:ainalnisr/components/bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}


