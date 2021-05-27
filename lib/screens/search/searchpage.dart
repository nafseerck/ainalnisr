import 'package:ainalnisr/components/bottom_navbar.dart';
import 'package:ainalnisr/components/search_box.dart';
import 'package:flutter/material.dart';

class SearchPageFull extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchBox(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

