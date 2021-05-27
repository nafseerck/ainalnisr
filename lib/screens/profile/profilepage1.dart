  import 'package:ainalnisr/components/bottom_navbar.dart';
  import 'package:ainalnisr/screens/profile/profilepage.dart';
  import 'package:flutter/material.dart';

  class ProfilePageFull extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: ProfilePage(),
        bottomNavigationBar: BottomNavBar(),
      );
    }
  }

