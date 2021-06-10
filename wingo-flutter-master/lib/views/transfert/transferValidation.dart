import 'package:flutter/material.dart';
import 'package:flutter_app/views/dialog/transfertSuccessDialog.dart';

class TransferValidation extends StatefulWidget {
  @override
  _TransferValidationState createState() => _TransferValidationState();
}

class _TransferValidationState extends State<TransferValidation> {
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
                          width: MediaQuery.of(context).size.width,
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
                              SizedBox(
                                height: 30,
                              ),
                              ListTile(
                                leading: Image(
                                  image:
                                      AssetImage("assets/images/bank of.png"),
                                ),
                                title: Text(
                                  'Bank of America',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                subtitle: Text('****9999'),
                                trailing: Icon(
                                  Icons.arrow_drop_down_sharp,
                                  size: 30,
                                ),
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
                                    "Transaction Details",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                width: 300,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "To",
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 17),
                                          ),
                                          Text("Orhan Ozdemir", style: TextStyle(fontSize: 17),)
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Divider(
                                        height: 20,
                                        thickness: 2,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Credit Card",
                                              style:
                                                  TextStyle(color: Colors.grey, fontSize: 17)),
                                          Text("Visa 8888", style: TextStyle(fontSize: 17),)
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Divider(
                                        height: 20,
                                        thickness: 2,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Transaction fee",
                                              style:
                                                  TextStyle(color: Colors.grey, fontSize: 17)),
                                          Text("Free", style: TextStyle(fontSize: 17),)
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Divider(
                                        height: 20,
                                        thickness: 2,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Total amount",
                                              style:
                                                  TextStyle(color: Colors.grey, fontSize: 17)),
                                          Text("1,240.00", style: TextStyle(fontSize: 17),)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 260,
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
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return TransferSuccess();
                                          });
                                    },
                                    color: Colors.amber,
                                    textColor: Colors.white,
                                    child: Text(
                                        "press & hold to transfer"
                                            .toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
