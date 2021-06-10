import 'package:flutter/material.dart';

class SelectTicket extends StatelessWidget {
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
                    height: MediaQuery.of(context).size.width / 80,
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
                              top: MediaQuery.of(context).size.width / 12),
                          child: Text(
                            'Select your ticket',
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
                          height: MediaQuery.of(context).size.width / 1.2,
                          width: MediaQuery.of(context).size.width / 1.10,
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width / 40),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(244, 245, 247, 10),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Image(
                                  image: AssetImage(
                                      "assets/images/mastercard.png"),
                                ),
                                title: Text('La Défense'),
                                subtitle: Text('18 Jul 2020'),
                                trailing: Text("7:00"),
                              ),
                              Container(
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(left: 42),
                                  child: Text("°")),
                              Container(
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(left: 42),
                                  child: Text("°")),
                              ListTile(
                                leading: Image(
                                  image: AssetImage(
                                      "assets/images/mastercard.png"),
                                ),
                                title: Text('Place Italie'),
                                subtitle: Text('18 Jul 2020'),
                                trailing: Text("8:30"),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.width / 5,
                                width: MediaQuery.of(context).size.width / 1.30,
                                margin: EdgeInsets.only(
                                    top:
                                        MediaQuery.of(context).size.width / 60),
                                decoration: BoxDecoration(
                                    color: Colors.white60,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.train,
                                          color: Colors.grey,
                                        ),
                                        Container(
                                          width: 30,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color:
                                                  Color.fromRGBO(1, 82, 204, 3),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15))),
                                          child: Center(
                                              child: Text(
                                            "2",
                                            style: TextStyle(
                                                color: Colors.white60),
                                          )),
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      Icons.double_arrow_outlined,
                                      color: Colors.amber,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.train,
                                          color: Colors.grey,
                                        ),
                                        Container(
                                          width: 30,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15))),
                                          child: Center(
                                              child: Text(
                                            "5",
                                            style: TextStyle(
                                                color: Colors.white60),
                                          )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.width / 8.5,
                                width: MediaQuery.of(context).size.width / 1.25,
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
                                    child: Text("Buy (75.00)".toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width / 1.2,
                          width: MediaQuery.of(context).size.width / 1.10,
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width / 120),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(244, 245, 247, 10),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Image(
                                  image: AssetImage(
                                      "assets/images/mastercard.png"),
                                ),
                                title: Text('La Défense'),
                                subtitle: Text('18 Jul 2020'),
                                trailing: Text("7:00"),
                              ),
                              Container(
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(left: 42),
                                  child: Text("°")),
                              Container(
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(left: 42),
                                  child: Text("°")),
                              ListTile(
                                leading: Image(
                                  image: AssetImage(
                                      "assets/images/mastercard.png"),
                                ),
                                title: Text('Place Italie'),
                                subtitle: Text('18 Jul 2020'),
                                trailing: Text("8:30"),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.width / 5,
                                width: MediaQuery.of(context).size.width / 1.30,
                                margin: EdgeInsets.only(
                                    top:
                                        MediaQuery.of(context).size.width / 60),
                                decoration: BoxDecoration(
                                    color: Colors.white60,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.train,
                                          color: Colors.grey,
                                        ),
                                        Container(
                                          width: 30,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color:
                                                  Color.fromRGBO(1, 82, 204, 3),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15))),
                                          child: Center(
                                              child: Text(
                                            "2",
                                            style: TextStyle(
                                                color: Colors.white60),
                                          )),
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      Icons.double_arrow_outlined,
                                      color: Colors.amber,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.train,
                                          color: Colors.grey,
                                        ),
                                        Container(
                                          width: 30,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color:
                                              Colors.amber,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15))),
                                          child: Center(
                                              child: Text(
                                                "6",
                                                style: TextStyle(
                                                    color: Colors.white60),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      Icons.double_arrow_outlined,
                                      color: Colors.amber,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.train,
                                          color: Colors.grey,
                                        ),
                                        Container(
                                          width: 30,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15))),
                                          child: Center(
                                              child: Text(
                                            "5",
                                            style: TextStyle(
                                                color: Colors.white60),
                                          )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.width / 8.5,
                                width: MediaQuery.of(context).size.width / 1.25,
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
                                    child: Text("Buy (58.00)".toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white)),
                                  ),
                                ),
                              ),
                            ],
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
