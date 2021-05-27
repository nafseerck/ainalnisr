import 'package:ainalnisr/components/bottom_navbar.dart';
import 'package:ainalnisr/screens/home/HomeMainScreen.dart';
import 'package:ainalnisr/screens/profile/profilepage.dart';
import 'package:flutter/material.dart';

class ServicesPagesFull extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeMainScreen(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

