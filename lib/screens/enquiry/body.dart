import 'dart:convert';

import 'package:ainalnisr/components/text_field_container.dart';
import 'package:ainalnisr/constants.dart';
import 'package:ainalnisr/screens/Login/login_screen.dart';
import 'package:ainalnisr/screens/Signup/components/background.dart';
import 'package:ainalnisr/screens/thankyou/thankyou.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class Enquiry extends StatefulWidget {
  @override
  _EnquiryState createState() => _EnquiryState();
}

class _EnquiryState extends State<Enquiry> {
  int _value = 1;

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController services = TextEditingController();

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
                "GET A CALL BACK",
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
                  controller: name,
                  keyboardType: TextInputType.text,
                  cursorColor: kPrimaryColor,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                    hintText: "Enter Your Name",
                    border: InputBorder.none,
                  ),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Please Enter Your Name";
                    }

                    return null;
                  },
                  onSaved: (String name) {},
                ),
              ),

              TextFieldContainer(
                child: TextFormField(
                  controller: email,
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
              //Phone
              TextFieldContainer(
                child: TextFormField(
                  controller: phone,
                  keyboardType: TextInputType.text,
                  cursorColor: kPrimaryColor,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.phone,
                      color: kPrimaryColor,
                    ),
                    hintText: "Enter Your Phone",
                    border: InputBorder.none,
                  ),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Please Enter Your Phone";
                    }
                    if (value.length < 9) {
                      return "Please Enter Valid Phone Number";
                    }
                    return null;
                  },
                  onSaved: (String phone) {},
                ),
              ),
              //
              // //password
              TextFieldContainer(
                child: TextFormField(
                  controller: address,
                  keyboardType: TextInputType.text,
                  cursorColor: kPrimaryColor,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: kPrimaryColor,
                    ),
                    hintText: "Enter Your Address",
                    border: InputBorder.none,
                  ),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Please Enter Your Address";
                    }

                    return null;
                  },
                ),
              ),
              TextFieldContainer(
                child: DropdownButton(
                  value: _value,
                  items: [
                    DropdownMenuItem(
                      child: Text("First Item"),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text("Second Item"),
                      value: 2,
                    ),
                  ],
                  onChanged: (int value) {
                    setState(() {
                      value = value;
                    });
                  },
                  hint: Text("Select Item"),
                ),
              ),

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
                        MaterialPageRoute(
                            builder: (context) => thankYouScreen()),
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

  void registerUser() async {
    var url =
        "https://www.ireproperty.com/promo/ainalnisr-database/enquiry.php";

    // var url =
    //     "https://www.ireproperty.com/promo/ainalnisr-database/enquiry.php";
    var data = {
      "name": name.text,
      "email": email.text,
      "phone": phone.text,
      "address": address.text,
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
    } else {
      if (jsonDecode(res.body) == "true") {
        Fluttertoast.showToast(
          msg: "You Entry Is Submitted",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      } else {
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
