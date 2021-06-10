import 'package:flutter/material.dart';
import 'package:flutter_app/views/dialog/dialog.dart';

class TopUpDepositSource extends StatefulWidget {
  @override
  _TopUpDepositSourceState createState() => _TopUpDepositSourceState();
}

class _TopUpDepositSourceState extends State<TopUpDepositSource> {
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
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Color.fromRGBO(193, 199, 208, 3)),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '16,003.00',
                                hintStyle: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w600),
                                filled: true,
                                fillColor: Color.fromRGBO(244, 245, 247, 3),
                                contentPadding:
                                    const EdgeInsets.only(left: 115),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 55,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.width * 1.299,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40),
                                )),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 35,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  height: MediaQuery.of(context).size.width / 3,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        topRight: Radius.circular(25),
                                        bottomLeft: Radius.circular(25),
                                        bottomRight: Radius.circular(25),
                                      )),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "Money Source",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Divider(
                                          height: 20,
                                          thickness: 2,
                                          indent: 20,
                                          endIndent: 20),
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
                                        trailing: Icon(Icons.arrow_forward_ios),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  height:
                                      MediaQuery.of(context).size.width / 2.7,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        topRight: Radius.circular(25),
                                        bottomLeft: Radius.circular(25),
                                        bottomRight: Radius.circular(25),
                                      )),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "Information",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Divider(
                                          height: 20,
                                          thickness: 2,
                                          indent: 20,
                                          endIndent: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Amout of Money"),
                                          SizedBox(
                                            width: 140,
                                          ),
                                          Text("16,003.00")
                                        ],
                                      ),
                                      Divider(
                                          height: 20,
                                          thickness: 2,
                                          indent: 20,
                                          endIndent: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Fee"),
                                          SizedBox(
                                            width: 255,
                                          ),
                                          Text(
                                            "Free",
                                            style:
                                                TextStyle(color: Colors.amber),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
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
                                              return DialogScreen(
                                                color: Colors.amber,
                                                icon: Icons.money_outlined,
                                                title: 'Successful deposit into wallet',
                                                message: 'Now you can comfortably shop, eat and drink.',
                                                message2 :'Enjoy it',
                                                buttonText: 'GO BACK TO HOME',
                                              );
                                            });
                                      },
                                      color: Colors.amber,
                                      textColor: Colors.white,
                                      child: Text("Cash in".toUpperCase(),
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
                      ),
                    ))
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
