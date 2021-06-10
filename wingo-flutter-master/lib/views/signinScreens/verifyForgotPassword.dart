import 'package:flutter/material.dart';
import 'package:flutter_app/controllers/authController.dart';
import 'package:flutter_app/views/dialog/dialog.dart';
import 'package:flutter_app/views/signinScreens/forgotPassword.dart';
import 'package:flutter_app/views/signinScreens/login.dart';

class VerifyForgotPassword extends StatelessWidget {
  final _tokenNb1 = TextEditingController();
  final _tokenNb2 = TextEditingController();
  final _tokenNb3 = TextEditingController();
  final _tokenNb4 = TextEditingController();
  final String email;

  VerifyForgotPassword({Key key, @required this.email}) : super(key: key);

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
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Login()),
                            );
                          },
                          child: Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width / 9.5,
                                  left: MediaQuery.of(context).size.width / 20),
                              child: Icon(Icons.close)),
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
                              'Verify your identity',
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
                              'We have just sent a code to (+84) 999 999 999!',
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top:
                                        MediaQuery.of(context).size.width / 10),
                                child: SizedBox(
                                  width: 60,
                                  height: 60,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF6F5FA),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                              color: Colors.black26,
                                              blurRadius: 5.0,
                                              spreadRadius: 1,
                                              offset: Offset(0.0, 0.75))
                                        ],
                                      ),
                                      child: Center(
                                        child: Container(
                                          margin: EdgeInsets.only(left: 28),
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            controller: _tokenNb1,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20),
                                            decoration: new InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top:
                                        MediaQuery.of(context).size.width / 10),
                                child: SizedBox(
                                  width: 60,
                                  height: 60,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF6F5FA),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                              color: Colors.black26,
                                              blurRadius: 5.0,
                                              spreadRadius: 1,
                                              offset: Offset(0.0, 0.75))
                                        ],
                                      ),
                                      child: Center(
                                        child: Container(
                                          margin: EdgeInsets.only(left: 28),
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            controller: _tokenNb2,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20),
                                            decoration: new InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top:
                                        MediaQuery.of(context).size.width / 10),
                                child: SizedBox(
                                  width: 60,
                                  height: 60,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF6F5FA),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                              color: Colors.black26,
                                              blurRadius: 5.0,
                                              spreadRadius: 1,
                                              offset: Offset(0.0, 0.75))
                                        ],
                                      ),
                                      child: Center(
                                        child: Container(
                                          margin: EdgeInsets.only(left: 28),
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            controller: _tokenNb3,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20),
                                            decoration: new InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top:
                                        MediaQuery.of(context).size.width / 10),
                                child: SizedBox(
                                  width: 60,
                                  height: 60,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF6F5FA),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                              color: Colors.black26,
                                              blurRadius: 5.0,
                                              spreadRadius: 1,
                                              offset: Offset(0.0, 0.75))
                                        ],
                                      ),
                                      child: Center(
                                        child: Container(
                                          margin: EdgeInsets.only(left: 28),
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            controller: _tokenNb4,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20),
                                            decoration: new InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 5),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.width /
                                          28),
                                  child: Text(
                                    ' I didnt receive code.',
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
                                GestureDetector(
                                  onTap: () {
                                    forgotPasswordMail(email).then((result){
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return DialogScreen(
                                              color: Colors.amber,
                                              icon: Icons.check_circle,
                                              title: 'Success',
                                              message: 'Password verification mail sent',
                                              message2 :'',
                                              buttonText: 'Close',
                                            );
                                          });
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        top: MediaQuery.of(context).size.width /
                                            28),
                                    child: Text(
                                      'Resend Code',
                                      style: TextStyle(
                                        fontFamily: 'DMSans-Regular',
                                        fontSize: 14,
                                        color: Colors.amber,
                                        letterSpacing: -0.3999999961853027,
                                        height: 1.7142857142857142,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(
                                          applyHeightToFirstAscent: false),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.width / 8.5,
                            width: MediaQuery.of(context).size.width / 1.25,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width / 3.5),
                            child: InkWell(
                              onTap: () {},
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                onPressed: () {
                                  if ((_tokenNb1.text == "") ||
                                      (_tokenNb2.text == "") ||
                                      (_tokenNb3.text == "") ||
                                      (_tokenNb4.text == "")) {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return DialogScreen(
                                            color: Colors.red,
                                            icon: Icons.error_outline,
                                            title: 'Error',
                                            message: 'Enter code to verify your identity',
                                            message2 :'',
                                            buttonText: 'Close',
                                          );
                                        });
                                  } else {
                                    print(_tokenNb1.text);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ForgotPassword(
                                                token: _tokenNb1.text +
                                                    _tokenNb2.text +
                                                    _tokenNb3.text +
                                                    _tokenNb4.text,
                                            email: email,
                                              )),
                                    );
                                  }
                                },
                                color: Colors.amber,
                                textColor: Colors.white,
                                child: Text("Next".toUpperCase(),
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white)),
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
                top: MediaQuery.of(context).size.width / 5.5,
                left: MediaQuery.of(context).size.width / 2.7,
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 8),
                  child: Image(
                    image: AssetImage("assets/images/code.png"),
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
