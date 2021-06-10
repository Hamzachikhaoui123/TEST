import 'package:flutter/material.dart';
import 'package:flutter_app/views/dialog/transfertSuccessDialog.dart';
class TransferSource extends StatefulWidget {
  @override
  _TransferSourceState createState() => _TransferSourceState();
}

class _TransferSourceState extends State<TransferSource> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1.1,
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
                        child: Column(
                          children: [
                            Container(
                              width:
                              MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25),
                                  )),
                              child: Column(
                                children: [
                                  SizedBox(height: 30,),
                                  ListTile(
                                    leading: Image(
                                      image: AssetImage(
                                          "assets/images/bank of.png"),
                                    ),
                                    title: Text(
                                      'Bank of America',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    subtitle: Text('****9999'),
                                    trailing: Icon(Icons.arrow_drop_down_sharp, size: 30,),
                                  ),
                                  Divider(
                                      height: 20,
                                      thickness: 2,
                                      indent: 20,
                                      endIndent: 20),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        "Recent Payees",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Image(
                                            image:
                                            AssetImage("assets/images/paypal.png"),
                                          ),
                                          SizedBox(height: 8),
                                          Text("Name")
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Image(
                                            image: AssetImage("assets/images/visa.png"),
                                          ),
                                          SizedBox(height: 8),
                                          Text("Name")
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Image(
                                            image: AssetImage(
                                                "assets/images/mastercard.png"),
                                          ),
                                          SizedBox(height: 8),
                                          Text("Name")
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Image(
                                            image: AssetImage(
                                                "assets/images/payoneer.png"),
                                          ),
                                          SizedBox(height: 8),
                                          Text("Name")
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.width / 8.5,
                                    width: MediaQuery.of(context).size.width / 1.25,
                                    margin: EdgeInsets.only(
                                        top: MediaQuery.of(context).size.width / 45),
                                    child: InkWell(
                                      onTap: () {},
                                      // ignore: deprecated_member_use
                                      child: FlatButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15.0),
                                        ),
                                        onPressed: () {
                                        },
                                        color: Color.fromRGBO(244, 245, 247, 3),
                                        textColor: Colors.white,
                                        child: Text("See all",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: const Color(0xff7a869a))),
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
                                          "Name",
                                          style: TextStyle(
                                              color: Color.fromRGBO(193, 199, 208, 3)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                                    child: TextField(
                                      autofocus: false,
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: Color.fromRGBO(193, 199, 208, 3)),
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.account_circle_rounded),
                                        border: InputBorder.none,
                                        hintText: 'Stella Cobb',
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
                                          "Card Number",
                                          style: TextStyle(
                                              color: Color.fromRGBO(193, 199, 208, 3)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                                    child: TextField(
                                      autofocus: false,
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: Color.fromRGBO(193, 199, 208, 3)),
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.credit_card_sharp),
                                        suffixIcon: Icon(
                                          Icons.done,
                                          color: Colors.amber,
                                        ),
                                        border: InputBorder.none,
                                        hintText: '4509 2097 9956 6997',
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
                                          "Note",
                                          style: TextStyle(
                                              color: Color.fromRGBO(193, 199, 208, 3)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                                    child: TextField(
                                      autofocus: false,
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: Color.fromRGBO(193, 199, 208, 3)),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Enter note',
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
                                  SizedBox(height: 30,),
                                  Container(
                                    height:
                                    MediaQuery.of(context).size.width / 8.5,
                                    width:
                                    MediaQuery.of(context).size.width / 1.25,
                                    child: InkWell(
                                      onTap: () {},
                                      // ignore: deprecated_member_use
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(15.0),
                                        ),
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return TransferSuccess();
                                              });
                                        },
                                        color: Colors.amber,
                                        textColor: Colors.white,
                                        child: Text("next".toUpperCase(),
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white)),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
