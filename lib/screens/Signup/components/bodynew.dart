import 'dart:convert';
import 'package:ainalnisr/Screens/Login/login_screen.dart';
import 'package:ainalnisr/constants.dart';
import 'package:ainalnisr/components/text_field_container.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:ainalnisr/Screens/Login/components/background.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController email = TextEditingController();
  // TextEditingController _password = TextEditingController();

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
                "SIGNUP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "asset/icons/signup.svg",
                height: size.height * 0.32,
              ),

              //username
              TextFieldContainer(
                child: TextFormField(
                  controller: user,
                  keyboardType: TextInputType.text,
                  cursorColor: kPrimaryColor,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                    hintText: "Enter Your Username",
                    border: InputBorder.none,
                  ),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Please Enter Your Username";
                    }

                    return null;
                  },
                  onSaved: (String name) {},
                ),
              ),

              //email
              // TextFieldContainer(
              //   child: TextFormField(
              //     controller: email,
              //     keyboardType: TextInputType.text,
              //     cursorColor: kPrimaryColor,
              //     decoration: InputDecoration(
              //       icon: Icon(
              //         Icons.email,
              //         color: kPrimaryColor,
              //       ),
              //       hintText: "Enter Your Email",
              //       border: InputBorder.none,
              //     ),
              //     validator: (String value) {
              //       if (value.isEmpty) {
              //         return "Please Enter Your Email";
              //       }
              //       if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              //           .hasMatch(value)) {
              //         return "Please enter valid email";
              //       }
              //       return null;
              //     },
              //     onSaved: (String email) {},
              //   ),
              // ),
              // //Phone
              // TextFieldContainer(
              //   child: TextFormField(
              //     controller: _phone,
              //     keyboardType: TextInputType.text,
              //     cursorColor: kPrimaryColor,
              //     decoration: InputDecoration(
              //       icon: Icon(
              //         Icons.phone,
              //         color: kPrimaryColor,
              //       ),
              //       hintText: "Enter Your Phone",
              //       border: InputBorder.none,
              //     ),
              //     validator: (String value) {
              //       if (value.isEmpty) {
              //         return "Please Enter Your Phone";
              //       }
              //       if (value.length < 9) {
              //         return "Please Enter Valid Phone Number";
              //       }
              //       return null;
              //     },
              //     onSaved: (String phone) {},
              //   ),
              // ),
              //
              // //password
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
              //confirm password

              // TextFieldContainer(
              //   child: TextFormField(
              //     controller: _confirmpassword,
              //     keyboardType: TextInputType.text,
              //     cursorColor: kPrimaryColor,
              //     decoration: InputDecoration(
              //       icon: Icon(
              //         Icons.lock,
              //         color: kPrimaryColor,
              //       ),
              //       hintText: "Confirm Your Password",
              //       border: InputBorder.none,
              //     ),
              //     validator: (String value) {
              //       if (value.isEmpty) {
              //         return "Confirm Your Password";
              //       }
              //       if (_password.text != _confirmpassword.text) {
              //         return "Password Do not match";
              //       }
              //
              //       return null;
              //     },
              //   ),
              // ),

              SizedBox(
                width: 200,
                height: 50,
                child: RaisedButton(
                  color: Colors.redAccent,
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      registerUser();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                      print("Successful");
                    } else {
                      print("Unsuccessfull");
                    }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(color: Colors.blue, width: 2)),
                  textColor: Colors.white,
                  child: Text("Submit"),
                ),
              ),
              //End of sized
            ],
          ),
        ),
      ),
    );
  }

  Future registrationUser() async {
    // url to registration php script
    Map data = {"username": user.text, "password": pass.text};
    var jsonResponse = null;
    var response = await http.post(
        "http://ireproperty.com/promo/ainalnisr-database/register.php",
        body: data);
    var datas = json.decode(response.body);
    print("DATA: $data");

    if (datas == "Error") {
      Fluttertoast.showToast(
        msg: "This User Already Exist ",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    } else {
      Fluttertoast.showToast(
        msg: "Registration Success",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  void registerUser() async {
    var url = "https://www.ireproperty.com/promo/ainalnisr-database/signup.php";
    var data = {
      "username": user.text,
      "password": pass.text,
    };
    var res = await http.post(url, body: data);
    print(data);
    print(res);
    print(jsonDecode(res.body));
    if (jsonDecode(res.body) == "account already exists") {
      Fluttertoast.showToast(
        msg: "Accounts Already Exists, Please Login",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );

    }
    else {
      if(jsonDecode(res.body) == "true"){
        Fluttertoast.showToast(
          msg: "Accounts Created",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
      else {
        Fluttertoast.showToast(
          msg: "Error",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
    }
  }
}
