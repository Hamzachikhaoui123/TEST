import 'package:flutter/material.dart';
import 'package:flutter_app/controllers/getXcontrollers/linkCardControllerX.dart';
import 'package:flutter_app/controllers/linkCardController.dart';
import 'package:get/get.dart';

class LinkedCard extends StatefulWidget {
  @override
  _LinkedCardState createState() => _LinkedCardState();
}

class _LinkedCardState extends State<LinkedCard> {
  final linkedCardController = Get.put(LinkedCardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        color: Color.fromRGBO(234, 239, 255, 3),
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width / 9.5,
                        ),
                        child: Icon(Icons.keyboard_arrow_left_outlined),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width / 9.5,
                              left: MediaQuery.of(context).size.width / 6),
                          child: Text("Link Card")),
                      Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width / 9.5,
                              left: MediaQuery.of(context).size.width / 6),
                          child: Text("Skip")),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 1,
                    margin: EdgeInsets.only(left: 25, right: 25),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: 15, top: 15),
                                child: Text("Bank Account")),
                          ],
                        ),
                        SizedBox(height: 15),
                        Divider(
                          height: 20,
                          thickness: 0.1,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        GetX<LinkedCardController>(builder: (controller) {
                          return Expanded(
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: controller.cards.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                      width: 300,
                                      height: 300,
                                      child: GridView.count(
                                        crossAxisCount: controller.cards.length,
                                        crossAxisSpacing: 5.0,
                                        mainAxisSpacing: 8.0,
                                        scrollDirection: Axis.vertical,
                                        children: List.generate(4, (index) {
                                          return Column(
                                            children: [
                                              Image.asset(
                                                "assets/images/${controller.cards[index].bank_name}.png",
                                                width: 55,
                                                height: 55,
                                              ),
                                              Text(
                                                  "${controller.cards[index].bank_name}"
                                                      .capitalize)
                                            ],
                                          );
                                        }),
                                      ));
                                }),
                          );
                        }),
                        SizedBox(
                          height: 20,
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
                                indexCards(1);
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
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 25, right: 25, bottom: 35, top: 20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 15, top: 15),
                                  child: Text("International Card")),
                            ],
                          ),
                          SizedBox(height: 10),
                          Divider(
                            height: 20,
                            thickness: 0.1,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 15,
                          ),
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
                                  Text("Paypal")
                                ],
                              ),
                              Column(
                                children: [
                                  Image(
                                    image: AssetImage("assets/images/visa.png"),
                                  ),
                                  SizedBox(height: 8),
                                  Text("Citibank")
                                ],
                              ),
                              Column(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        "assets/images/mastercard.png"),
                                  ),
                                  SizedBox(height: 8),
                                  Text("Bank of ...")
                                ],
                              ),
                              Column(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        "assets/images/payoneer.png"),
                                  ),
                                  SizedBox(height: 8),
                                  Text("Deutsche")
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
