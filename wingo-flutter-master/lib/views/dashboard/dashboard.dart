import 'package:flutter/material.dart';
import 'package:flutter_app/views/dashboard/customBottomNavigationBar.dart';
import 'package:flutter_app/views/dashboard/homeTopTabs.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      initialIndex: 0,
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(
          iconList: [
            Icons.apps,
            Icons.money_outlined,
            Icons.qr_code_scanner_sharp,
            Icons.wallet_membership,
            Icons.account_circle_rounded,
          ],
          onChange: (val) {
            setState(() {
              _selectedItem = val;
            });
          },
          defaultSelectedIndex: 1,
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 2,
            width: double.infinity,
            color: Color.fromRGBO(234, 239, 255, 3),
            child: Stack(
              children: [
                SafeArea(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 2,
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 7,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Search on CaPay",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        icon: Icon(
                                          Icons.search,
                                          color: Colors.grey,
                                        )),
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Row(),
                                )
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                              margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width / 30,
                              ),
                              child: Text(
                                "16,003.00",
                                style: TextStyle(fontSize: 30),
                              )),
                        ),
                        Center(
                          child: Container(
                              margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.width / 100,
                              ),
                              child: Text(
                                "CaPay Balance",
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              )),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width / 7,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.0))),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Icon(
                                    Icons.money,
                                    color: Colors.amber,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Top up")
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 80,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.0))),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Icon(
                                    Icons.money,
                                    color: Colors.amber,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Transfer")
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 80,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.0))),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Icon(
                                    Icons.money,
                                    color: Colors.amber,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Withdraw")
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
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
                                Row(
                                  children: [
                                    Container(
                                        margin:
                                            EdgeInsets.only(left: 20, top: 15),
                                        child: Text(
                                          "Services",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        )),
                                  ],
                                ),
                                SizedBox(height: 25),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "assets/images/hsbc.png"),
                                        ),
                                        SizedBox(height: 8),
                                        Text("Travelling")
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "assets/images/citibank.png"),
                                        ),
                                        SizedBox(height: 8),
                                        Text("Ticket")
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "assets/images/bank of.png"),
                                        ),
                                        SizedBox(height: 8),
                                        Text("Shopping")
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "assets/images/deutsche.png"),
                                        ),
                                        SizedBox(height: 8),
                                        Text("Voucher")
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "assets/images/mizohu.png"),
                                        ),
                                        SizedBox(height: 8),
                                        Text("Top up")
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "assets/images/santander.png"),
                                        ),
                                        SizedBox(height: 8),
                                        Text("Bill Pay")
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "assets/images/mufg.png"),
                                        ),
                                        SizedBox(height: 8),
                                        Text("Rewards")
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "assets/images/barclays.png"),
                                        ),
                                        SizedBox(height: 8),
                                        Text("More")
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Divider(
                                  height: 20,
                                  thickness: 0.05,
                                  color: Colors.black,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 20, top: 15),
                                      child: Text(
                                        "Spendings",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 40,
                                            width: 300,
                                            child: ListTile(
                                              leading: Image(
                                                image: AssetImage(
                                                    "assets/images/mastercard.png"),
                                              ),
                                              title: Text('Alan Santos'),
                                              subtitle:
                                                  Text('09 December 2020'),
                                              trailing: Text("+ 1,220.00"),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 40,
                                            width: 300,
                                            child: ListTile(
                                              leading: Image(
                                                image: AssetImage(
                                                    "assets/images/mastercard.png"),
                                              ),
                                              title: Text('Metro Ticket'),
                                              subtitle:
                                                  Text('21 December 2020'),
                                              trailing: Text("- 0.00"),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 40,
                                            width: 300,
                                            child: ListTile(
                                              leading: Image(
                                                image: AssetImage(
                                                    "assets/images/mastercard.png"),
                                              ),
                                              title: Text('Internet Bill'),
                                              subtitle:
                                                  Text('21 December 2020'),
                                              trailing: Text("- 20.00"),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.width /
                                                8.5,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.25,
                                        margin: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                45),
                                        child: InkWell(
                                          onTap: () {},
                                          // ignore: deprecated_member_use
                                          child: FlatButton(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            onPressed: () {},
                                            color: Color.fromRGBO(
                                                244, 245, 247, 3),
                                            textColor: Colors.white,
                                            child: Text("See all",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: const Color(
                                                        0xff7a869a))),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Divider(
                                  height: 20,
                                  thickness: 0.05,
                                  color: Colors.black,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 20, top: 15),
                                      child: Text(
                                        "Monthly Budget",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: TabBarView(
                                    children: [
                                      HomeTopTabs(Colors.amber),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
