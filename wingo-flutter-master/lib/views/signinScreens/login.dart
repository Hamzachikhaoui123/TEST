import 'package:flutter/material.dart';
import 'package:flutter_app/controllers/authController.dart';
import 'package:flutter_app/views/dialog/dialog.dart';
import 'package:flutter_app/views/signinScreens/createaccount.dart';
import 'package:flutter_app/views/signinScreens/forgotPassword.dart';
import 'package:flutter_app/views/signinScreens/otp_received.dart';
import 'package:flutter_app/views/signinScreens/passwordrecovery.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
                        Container(
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width / 9.5,
                                left: MediaQuery.of(context).size.width / 20),
                            child: Icon(Icons.close)),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PasswordRecovery()),
                            );
                          },
                          child: Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width / 9.5,
                                  left: MediaQuery.of(context).size.width / 2.2),
                              child: Text("Forgot your credentials?")),
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
                              'Let’s Sign You In',
                              style: TextStyle(
                                fontFamily: 'DMSans-Bold',
                                fontSize: 24,
                                color: const Color(0xff172b4d),
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
                              'Welcome back, you’ve been missed!',
                              style: TextStyle(
                                fontFamily: 'DMSans-Regular',
                                fontSize: 14,
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
                                    top: MediaQuery.of(context).size.width / 6),
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
                            height: MediaQuery.of(context).size.width / 8.5,
                            width: MediaQuery.of(context).size.width / 1.25,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width / 5),
                            child: InkWell(
                              onTap: () {},
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                onPressed: () {
                                  signIn(_emailController.text,
                                      _passwordController.text).then((result){
                                    if(result['status']['code'] == 401){
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return DialogScreen(
                                              color: Colors.red,
                                              icon: Icons.error_outline,
                                              title: 'Error',
                                              message: result['message'],
                                              message2 :'Please enter a valid informations',
                                              buttonText: 'Close',
                                            );
                                          });
                                    }
                                    else if(result['status']['code'] == 403){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => OTPReceived(email: _emailController.text)),
                                      );
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return DialogScreen(
                                              color: Colors.red,
                                              icon: Icons.error_outline,
                                              title: 'Error',
                                              message: result['message'],
                                              message2 :'',
                                              buttonText: 'Close',
                                            );
                                          });
                                    }
                                  });
                                },
                                color: Colors.amber,
                                textColor: Colors.white,
                                child: Text("Sign in".toUpperCase(),
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white)),
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.width / 8.5,
                            width: MediaQuery.of(context).size.width / 1.25,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width / 45),
                            child: InkWell(
                              onTap: () {},
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CreateAccount()),
                                  );
                                },
                                color: Color.fromRGBO(244, 245, 247, 3),
                                textColor: Colors.white,
                                child: Text("Create an account",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: const Color(0xff7a869a))),
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
                top: MediaQuery.of(context).size.width / 6,
                left: MediaQuery.of(context).size.width / 2.7,
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 8),
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
