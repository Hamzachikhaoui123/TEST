import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_app/controllers/authController.dart';
import 'package:flutter_app/controllers/linkCardController.dart';
import 'package:flutter_app/views/dialog/dialog.dart';
import 'package:flutter_app/views/signinScreens/login.dart';
import 'package:flutter_app/views/signinScreens/otp_received.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LinkCard extends StatefulWidget {
  @override
  _LinkCardState createState() => _LinkCardState();
}

class _LinkCardState extends State<LinkCard> {
  final _cardholderNameController = TextEditingController();
  final _cardNumberController = TextEditingController();
  final _monthController = TextEditingController();
  final _yearController = TextEditingController();

  bool checkboxValue = false;
  String dropdownValue = 'Amen Bank';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: double.infinity,
          color: Color.fromRGBO(234, 239, 255, 3),
          child: Stack(
            children: [
              SafeArea(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 25,
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
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width / 10),
                            child: Image(
                              image: AssetImage("assets/images/visa_card.png"),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  12,
                                              right: 33),
                                          child: Text(
                                            "Cardholder Name",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    193, 199, 208, 3)),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          margin: EdgeInsets.fromLTRB(
                                              30, 10, 30, 0),
                                          child: TextField(
                                            controller:
                                                _cardholderNameController,
                                            autofocus: false,
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                color: Color.fromRGBO(
                                                    193, 199, 208, 3)),
                                            decoration: InputDecoration(
                                              prefixIcon:
                                                  Icon(Icons.account_circle),
                                              border: InputBorder.none,
                                              hintText: 'Ugur Ates',
                                              filled: true,
                                              fillColor: Color.fromRGBO(
                                                  244, 245, 247, 3),
                                              contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 20.0,
                                                      bottom: 6.0,
                                                      top: 15.0),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                              ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  20,
                                              right: 25),
                                          child: Text(
                                            "Bank Name",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    193, 199, 208, 3)),
                                          ),
                                        ),
                                        Container(
                                          width: 130,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color.fromRGBO(
                                                244, 245, 247, 3),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: DropdownButton<String>(
                                              value: dropdownValue,
                                              icon: const Icon(
                                                  Icons.arrow_downward),
                                              iconSize: 24,
                                              elevation: 16,
                                              style: const TextStyle(
                                                  color: Colors.black54),
                                              underline: Container(
                                                height: 0.7,
                                                color: Colors.black,
                                              ),
                                              onChanged: (String newValue) {
                                                setState(() {
                                                  dropdownValue = newValue;
                                                });
                                              },
                                              items: <String>[
                                                'Amen Bank',
                                                'ATB',
                                                'UBCI',
                                                'BIAT'
                                              ].map<DropdownMenuItem<String>>(
                                                  (String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
                              controller: _cardNumberController,
                              autofocus: false,
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Color.fromRGBO(193, 199, 208, 3)),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.apps),
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
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                20,
                                            right: 60),
                                        child: Text(
                                          "Month",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  193, 199, 208, 3)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 120,
                                    margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                                    child: TextField(
                                      controller: _monthController,
                                      obscureText: false,
                                      autofocus: false,
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color:
                                              Color.fromRGBO(193, 199, 208, 3)),
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.calendar_today),
                                        border: InputBorder.none,
                                        hintText: '05',
                                        filled: true,
                                        fillColor:
                                            Color.fromRGBO(244, 245, 247, 3),
                                        contentPadding: const EdgeInsets.only(
                                            left: 20.0, bottom: 6.0, top: 15.0),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                20,
                                            right: 80),
                                        child: Text(
                                          "Year",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  193, 199, 208, 3)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 120,
                                    margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                                    child: TextField(
                                      controller: _yearController,
                                      obscureText: false,
                                      autofocus: false,
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color:
                                              Color.fromRGBO(193, 199, 208, 3)),
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.calendar_today),
                                        border: InputBorder.none,
                                        hintText: '2021',
                                        filled: true,
                                        fillColor:
                                            Color.fromRGBO(244, 245, 247, 3),
                                        contentPadding: const EdgeInsets.only(
                                            left: 20.0, bottom: 6.0, top: 15.0),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 15,
                                top: MediaQuery.of(context).size.width / 35),
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
                                    child: Text("Remember this card details.")),
                              ],
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
                                  storeCard(
                                          "2",
                                          _cardholderNameController.text,
                                          _cardNumberController.text,
                                          dropdownValue,
                                          _monthController.text,
                                          _yearController.text)
                                      .then((result) {
                                    if (result['status']['code'] == 402) {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return DialogScreen(
                                              color: Colors.red,
                                              icon: Icons.error_outline,
                                              title: 'Error',
                                              message: result['message'],
                                              message2:
                                                  'Please enter a valid card number',
                                              buttonText: 'Close',
                                            );
                                          });
                                    } else if (result['status']['code'] ==
                                        404) {
                                      String messageBody = "";
                                      if(result['message'].containsKey('cardholder_name')){
                                        messageBody+=result['message']['cardholder_name'][0]+"\n";
                                      }
                                      if(result['message'].containsKey('card_number')){
                                        messageBody+=result['message']['card_number'][0]+"\n";
                                      }
                                      if(result['message'].containsKey('bank_name')){
                                        messageBody+=result['message']['bank_name'][0]+"\n";
                                      }
                                      if(result['message'].containsKey('month')){
                                        messageBody+=result['message']['month'][0]+"\n";
                                      }
                                      if(result['message'].containsKey('year')){
                                        messageBody+=result['message']['year'][0]+"\n";
                                      }
                                      print(result['message']);
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
                                    }
                                    else if((result['status']['code'] == 200) && checkboxValue == true){
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return DialogScreen(
                                              color: Colors.amber,
                                              icon: Icons.credit_card,
                                              title: 'Card Added Successfully',
                                              message: "Now you can freely pay and shop, enjoy it",
                                              message2: result['message'],
                                              buttonText: 'Close',
                                            );
                                          });
                                    }
                                  });
                                },
                                color: Colors.amber,
                                textColor: Colors.white,
                                child: Text("next".toUpperCase(),
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
      ),
    );
  }
}
