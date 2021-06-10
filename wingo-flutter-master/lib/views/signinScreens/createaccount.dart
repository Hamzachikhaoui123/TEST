import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_app/controllers/authController.dart';
import 'package:flutter_app/views/dialog/dialog.dart';
import 'package:flutter_app/views/signinScreens/login.dart';
import 'package:flutter_app/views/signinScreens/otp_received.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _firstNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          color: Color.fromRGBO(234, 239, 255, 3),
          child: Stack(
            children: [
              SafeArea(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width / 9.5,
                                  left: MediaQuery.of(context).size.width / 20),
                              child: Icon(Icons.close)),
                        ),
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    top:
                                        MediaQuery.of(context).size.width / 9.5,
                                    left: MediaQuery.of(context).size.width /
                                        3.5),
                                child: Text("Already have an account? ")),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()),
                                );
                              },
                              child: Container(
                                  margin: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.width /
                                          9.5),
                                  child: Text(
                                    "Sign in",
                                    style: TextStyle(color: Colors.amberAccent),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 5,
                    ),
                    Expanded(
                        child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          )),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width / 4),
                            child: Text(
                              'Getting Started',
                              style: TextStyle(
                                fontFamily: 'DMSans-Bold',
                                fontSize: 24,
                                color: const Color(0xff172b4d),
                                letterSpacing: -0.3999999847412109,
                                height: 1.3333333333333333,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width / 30),
                            child: Text(
                              'Create an account to continue!',
                              style: TextStyle(
                                fontFamily: 'DMSans-Regular',
                                fontSize: 15,
                                color: const Color(0xff7a869a),
                                letterSpacing: -0.3999999961853027,
                                height: 1.7142857142857142,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width / 12,
                                    top:
                                        MediaQuery.of(context).size.width / 12),
                                child: Text(
                                  "Full Name",
                                  style: TextStyle(
                                      color: Color.fromRGBO(193, 199, 208, 3)),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                            child: TextField(
                              controller: _firstNameController,
                              autofocus: false,
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Color.fromRGBO(193, 199, 208, 3)),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.account_circle),
                                suffixIcon: Icon(
                                  Icons.done,
                                  color: Colors.amber,
                                ),
                                border: InputBorder.none,
                                hintText: 'Ugur Ates',
                                filled: true,
                                fillColor: Color.fromRGBO(244, 245, 247, 3),
                                contentPadding: const EdgeInsets.only(
                                    left: 20.0, bottom: 6.0, top: 15.0),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width / 12,
                                    top:
                                        MediaQuery.of(context).size.width / 20),
                                child: Text(
                                  "Phone Number",
                                  style: TextStyle(
                                      color: Color.fromRGBO(193, 199, 208, 3)),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                            child: TextField(
                              controller: _emailController,
                              autofocus: false,
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Color.fromRGBO(193, 199, 208, 3)),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.phone_android),
                                suffixIcon: Icon(
                                  Icons.done,
                                  color: Colors.amber,
                                ),
                                border: InputBorder.none,
                                hintText: '(+84) 123 456 789',
                                filled: true,
                                fillColor: Color.fromRGBO(244, 245, 247, 3),
                                contentPadding: const EdgeInsets.only(
                                    left: 20.0, bottom: 6.0, top: 15.0),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width / 12,
                                    top:
                                        MediaQuery.of(context).size.width / 20),
                                child: Text(
                                  "Password",
                                  style: TextStyle(
                                      color: Color.fromRGBO(193, 199, 208, 3)),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                            child: TextField(
                              controller: _passwordController,
                              obscureText: true,
                              autofocus: false,
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Color.fromRGBO(193, 199, 208, 3)),
                              decoration: InputDecoration(
                                prefixIcon:
                                    Icon(Icons.admin_panel_settings_sharp),
                                suffixIcon: Icon(
                                  Icons.done,
                                  color: Colors.amber,
                                ),
                                border: InputBorder.none,
                                hintText: '••••••••••••• ',
                                filled: true,
                                fillColor: Color.fromRGBO(244, 245, 247, 3),
                                contentPadding: const EdgeInsets.only(
                                    left: 20.0, bottom: 6.0, top: 15.0),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 15),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: checkboxValue,
                                  onChanged: (val) {
                                    setState(() {
                                      checkboxValue = val;
                                    });
                                    print(checkboxValue);
                                  },
                                ),
                                Container(
                                    height:
                                        MediaQuery.of(context).size.width / 20,
                                    width: MediaQuery.of(context).size.width /
                                        1.25,
                                    margin: EdgeInsets.only(
                                        top: MediaQuery.of(context).size.width /
                                            45),
                                    child: Text(
                                        "By creating an account, you agree to our.")),
                              ],
                            ),
                          ),
                          Container(
                            child: Text(
                              "Term and Conditions",
                              style: TextStyle(color: Colors.amber),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.width / 8.5,
                            width: MediaQuery.of(context).size.width / 1.25,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width / 25),
                            child: InkWell(
                              onTap: () {},
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                onPressed: () async {
                                  if (checkboxValue == true) {
                                    registration(
                                            _firstNameController.text,
                                            _emailController.text,
                                            _passwordController.text)
                                        .then((result) {
                                      print(result);
                                      if (result['status']['code'] == 403) {
                                        print(result['status']['code']);
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => OTPReceived(
                                                    email:
                                                        _emailController.text,
                                                  )),
                                        );
                                      } else if (result['status']['code'] ==
                                          404) {
                                        String messageBody = "";
                                        if(result['message'].containsKey('first_name')){
                                          messageBody+=result['message']['first_name'][0]+"\n";
                                        }
                                        if(result['message'].containsKey('email')){
                                          messageBody+=result['message']['email'][0]+"\n";
                                        }
                                        if(result['message'].containsKey('password')){
                                          messageBody+=result['message']['password'][0]+"\n";
                                        }
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return DialogScreen(
                                                color: Colors.red,
                                                icon: Icons.error_outline,
                                                title: 'Error',
                                                message: messageBody,
                                                message2: '',
                                                buttonText: 'Close',
                                              );
                                            });
                                      } else if (result['status']['code'] ==
                                          402) {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return DialogScreen(
                                                color: Colors.red,
                                                icon: Icons.error_outline,
                                                title: 'Error',
                                                message: result['message'],
                                                message2: '',
                                                buttonText: 'Close',
                                              );
                                            });
                                      }
                                    });
                                  } else {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return DialogScreen(
                                            color: Colors.red,
                                            icon: Icons.error_outline,
                                            title: 'Error',
                                            message:
                                                'Accept our terms and conditions',
                                            message2: '',
                                            buttonText: 'Close',
                                          );
                                        });
                                  }
                                },
                                color: Colors.amber,
                                textColor: Colors.white,
                                child: Text("Sign up".toUpperCase(),
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.width / 4.3,
                left: MediaQuery.of(context).size.width / 2.7,
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 15),
                  child: Image(
                    image: AssetImage("assets/images/profilepic.png"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
