import 'package:flutter/material.dart';
class Transfer extends StatefulWidget {
  @override
  _TransferState createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
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
                                  top: MediaQuery.of(context).size.width / 3.5),
                              child: Text(
                                'USD',
                                style: TextStyle(
                                  fontFamily: 'DMSans-Regular',
                                  fontSize: 16,
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
                              margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                autofocus: false,
                                style: TextStyle(fontSize: 15.0, color: Color.fromRGBO(193, 199, 208, 3)),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '16,003.00',
                                  hintStyle: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600
                                  ),
                                  filled: true,
                                  fillColor:  Color.fromRGBO(244, 245, 247, 3),
                                  contentPadding: const EdgeInsets.only(left: 115),
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.width / 8.5,
                              width: MediaQuery.of(context).size.width / 1.25,
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width / 2),
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
          ],
        ),
      ),
    );
  }
}
