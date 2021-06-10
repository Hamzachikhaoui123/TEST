import 'package:flutter/material.dart';

class FingerPrint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                      Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width / 9.5,
                              left: MediaQuery.of(context).size.width / 2.2),
                          child: Text("Forgot your credentials?")),
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
                            )
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width / 4),
                              child: Text(
                                'Fingerprint',
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
                                'Please lift and rest your finger',
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
                            Container(
                              margin: EdgeInsets.only(top: MediaQuery.of(context).size.width / 7),
                              child: Image(
                                image: AssetImage("assets/images/finger.png"),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.width / 8.5,
                              width: MediaQuery.of(context).size.width / 1.25,
                              margin: EdgeInsets.only(top: MediaQuery.of(context).size.width / 5),
                              child: InkWell(
                                onTap: () {},
                                // ignore: deprecated_member_use
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  onPressed: () {},
                                  color: Colors.amber,
                                  textColor: Colors.white,
                                  child: Text("Next".toUpperCase(),
                                      style: TextStyle(fontSize: 14, color: Colors.white)),
                                ),
                              ),
                            ),
                            Container(
                                height: MediaQuery.of(context).size.width / 20,
                                width: MediaQuery.of(context).size.width / 1.25,
                                margin: EdgeInsets.only(top: MediaQuery.of(context).size.width / 45),
                                child: Text(
                                    "By Signing up, you agree to our"
                                )
                            ),
                            Container(
                              child: Text(
                                "Term and Conditions", style: TextStyle(
                                  color: Colors.amber
                              ),
                              ),
                            ),
                          ],
                        ),
                      )
                  )
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.width / 5.5,
              left: MediaQuery.of(context).size.width / 2.7,
              child: Container(
                alignment: Alignment.center,
                margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.width / 8),
                child: Image(
                  image: AssetImage("assets/images/profilepic.png"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
