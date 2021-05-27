import 'dart:convert';
import 'package:ainalnisr/Screens/Login/login_screen.dart';
import 'package:ainalnisr/Screens/Welcome/welcome_screen.dart';
import 'package:ainalnisr/constants.dart';
import 'package:ainalnisr/components/text_field_container.dart';

import 'package:ainalnisr/Screens/Signup/signup_screen.dart';
import 'package:ainalnisr/components/already_have_an_account_acheck.dart';
import 'package:ainalnisr/screens/homepage.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:ainalnisr/Screens/Login/components/background.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isLoading = false;
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.03),
              //email
              TextFieldContainer(
                child: TextFormField(
                  controller: user,
                  keyboardType: TextInputType.text,
                  cursorColor: kPrimaryColor,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: kPrimaryColor,
                    ),
                    hintText: "Enter Your Email",
                    border: InputBorder.none,
                  ),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Please Enter Your Email";
                    }
                    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                        .hasMatch(value)) {
                      return "Please enter valid email";
                    }
                    return null;
                  },
                  onSaved: (String email) {},
                ),
              ),
              //password
              TextFieldContainer(
                child: TextFormField(
                  controller: pass,
                  keyboardType: TextInputType.text,
                  cursorColor: kPrimaryColor,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: kPrimaryColor,
                    ),
                    hintText: "Enter Your Password",
                    border: InputBorder.none,
                  ),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Please Enter Your Password";
                    }

                    return null;
                  },
                ),
              ),

              SizedBox(
                width: 200,
                height: 50,
                child: RaisedButton(
                  color: Colors.redAccent,
                  onPressed: () {
                    setState(() {
                      _isLoading = true;
                    });
                    login();
                    // signIn(user.text, pass.text);
                    print("Successfull Login");
                    // if (_formKey.currentState.validate()) {
                    //   registrationUser();
                    //   signIn(_email.text, _password.text);
                    //   print("Successful");
                    // } else {
                    //   print("Unsuccessfull");
                    // }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(color: Colors.blue, width: 2)),
                  textColor: Colors.white,
                  child: Text("Submit"),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future login() async {
    var url = "http://192.168.3.94/IndusProjects/NewFlutterLoginRegister/login.php";
    var response = await http.post(url,body : {
      "username" : user.text,
      "password" : pass.text
    });
    var data = json.decode(response.body);
    if(data == "Success") {
      Fluttertoast.showToast(
        msg: "Login Successfull ",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }
      else {
      Fluttertoast.showToast(
        msg: "Username and Password Incorrect ",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }


  signIn(String _email, _password) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {'email': _email, 'password': _password};
    var jsonResponse = null;
    var response = await http.post(
        "https://www.ireproperty.com/promo/propertygram/newdatas.php",
        body: data);


    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      print(jsonResponse);
      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });
        sharedPreferences.setString("token", jsonResponse['token']);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (BuildContext context) => HomeScreen()),
            (Route<dynamic> route) => false);
      }
    } else {
      setState(() {
        _isLoading = false;
      });
      print(response.body);
    }


  }
}
