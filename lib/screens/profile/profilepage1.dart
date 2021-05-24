  import 'package:ainalnisr/components/appbar.dart';
  import 'package:ainalnisr/components/bottom_navbar.dart';
  import 'package:ainalnisr/screens/profile/profilepage.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter_svg/svg.dart';
  import 'package:line_awesome_flutter/line_awesome_flutter.dart';
  import 'package:ainalnisr/widgets/constants.dart';
  import 'package:ainalnisr/profile_list_item.dart';

  class ProfilePageFull extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: ProfilePage(),
        bottomNavigationBar: BottomNavBar(),
      );
    }
  }

