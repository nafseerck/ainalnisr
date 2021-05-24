import 'package:ainalnisr/MainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:ainalnisr/widgets/constants.dart';
import 'package:ainalnisr/profile_list_item.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppPrimaryColor,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppBarButton(
                        icon: Icons.arrow_back,
                      ),
                      SvgPicture.asset("assets/icons/menu.svg"),
                    ],
                  ),
                ),
                AvatarImage(),
                SizedBox(
                  height: 30,
                ),
                SocialIcons(),
                SizedBox(height: 30),
                Text(
                  'Nafseer',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Poppins"),
                ),
                Text(
                  '@nafseer',
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 15),
                Text(
                  'Mobile App Developer and Open source enthusiastic',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontFamily: "Poppins"),
                ),
                ProfileListItems(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AppBarButton extends StatelessWidget {
  final IconData icon;

  const AppBarButton({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kAppPrimaryColor,
          boxShadow: [
            BoxShadow(
              color: kLightBlack,
              offset: Offset(1, 1),
              blurRadius: 10,
            ),
            BoxShadow(
              color: kWhite,
              offset: Offset(-1, -1),
              blurRadius: 10,
            ),
          ]),
      child: Icon(
        icon,
        color: fCL,
      ),
    );
  }
}

class AvatarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(8),
      decoration: avatarDecoration,
      child: Container(
        decoration: avatarDecoration,
        padding: EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('asset/image/user.png'),
            ),
          ),
        ),
      ),
    );
  }
}

class SocialIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SocialIcon(
          color: Color(0xFF102397),
          iconData: facebook,
          onPressed: () {},
        ),
        SocialIcon(
          color: Color(0xFFff4f38),
          iconData: googlePlus,
          onPressed: () {},
        ),
        SocialIcon(
          color: Color(0xFF38A1F3),
          iconData: twitter,
          onPressed: () {},
        ),
        SocialIcon(
          color: Color(0xFF2867B2),
          iconData: linkedin,
          onPressed: () {},
        )
      ],
    );
  }
}

class SocialIcon extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final Function onPressed;

  SocialIcon({this.color, this.iconData, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Container(
        width: 45.0,
        height: 45.0,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        child: RawMaterialButton(
          shape: CircleBorder(),
          onPressed: onPressed,
          child: Icon(iconData, color: Colors.white),
        ),
      ),
    );
  }
}

class ProfileListItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          PurchaseHistoryButton(),
          HelpAndSupport(),
          Settings(),
          InviteAFriend(),
          Logout(),

        ],
      ),
    );
  }
}

class PurchaseHistoryButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Row(
            children: [
              Container(
                // width: 200,
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width * 0.80,
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ).copyWith(
                    bottom: 20,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade300,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: new Icon(
                          LineAwesomeIcons.
                              history,
                            ),
                        highlightColor: Colors.pink,
                        onPressed: () {},
                      ),
                      Text(
                        "Purchase History",
                        style: kTitleTextStyle.copyWith(
                            fontWeight: FontWeight.w500, fontFamily: "Poppins"),
                      ),

                    ],
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

class HelpAndSupport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Row(
            children: [
              Container(
                // width: 200,
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width * 0.80,
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ).copyWith(
                    bottom: 20,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade300,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: new Icon(
                          LineAwesomeIcons.
                          question_circle,
                        ),
                        highlightColor: Colors.pink,
                        onPressed: () {},
                      ),
                      Text(
                        "Help and Support",
                        style: kTitleTextStyle.copyWith(
                            fontWeight: FontWeight.w500, fontFamily: "Poppins"),
                      ),

                    ],
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Row(
            children: [
              Container(
                // width: 200,
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width * 0.80,
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ).copyWith(
                    bottom: 20,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade300,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: new Icon(
                          LineAwesomeIcons.
                          cog,
                        ),
                        highlightColor: Colors.pink,
                        onPressed: () {},
                      ),
                      Text(
                        "Settings",
                        style: kTitleTextStyle.copyWith(
                            fontWeight: FontWeight.w500, fontFamily: "Poppins"),
                      ),

                    ],
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

class InviteAFriend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Row(
            children: [
              Container(
                // width: 200,
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width * 0.80,
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ).copyWith(
                    bottom: 20,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade300,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: new Icon(
                          LineAwesomeIcons.
                          user_plus,
                        ),
                        highlightColor: Colors.pink,
                        onPressed: () {},
                      ),
                      Text(
                        "Invite A Friend",
                        style: kTitleTextStyle.copyWith(
                            fontWeight: FontWeight.w500, fontFamily: "Poppins"),
                      ),

                    ],
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

class Logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Row(
            children: [
              Container(
                // width: 200,
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width * 0.80,
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ).copyWith(
                    bottom: 20,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade300,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: new Icon(
                          LineAwesomeIcons.
                          alternate_sign_out,
                        ),
                        highlightColor: Colors.pink,
                        onPressed: () {},
                      ),
                      Text(
                        "Log out",
                        style: kTitleTextStyle.copyWith(
                            fontWeight: FontWeight.w500, fontFamily: "Poppins"),
                      ),

                    ],
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}



