import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeTopTabs extends StatefulWidget {
  HomeTopTabs(this.colorVal);

  Color colorVal;

  _HomeTopTabsState createState() => _HomeTopTabsState();
}

class _HomeTopTabsState extends State<HomeTopTabs>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      widget.colorVal = Colors.amber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorWeight: 4.0,
          indicatorColor: Colors.amber,
          unselectedLabelColor: Colors.grey,
          tabs: <Widget>[
            Tab(
              child: Text('Category',
                  style: TextStyle(
                      color: _tabController.index == 0
                          ? Colors.amber
                          : Colors.grey)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Tab(
                child: Text('Merchant',
                    style: TextStyle(
                        color: _tabController.index == 1
                            ? Colors.amber
                            : Colors.grey)),
              ),
            ),
            Tab(
              child: Text('Country',
                  style: TextStyle(
                      color: _tabController.index == 2
                          ? Colors.amber
                          : Colors.grey)),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Container(
            height: 100,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 300,
                      child: ListTile(
                        leading: Image(
                          image: AssetImage("assets/images/mastercard.png"),
                        ),
                        title: Text('Shopping'),
                        subtitle: Text('22 Transactions'),
                        trailing: Column(
                          children: [
                            Text("+ 1,220.00"),
                            Text("50%")
                          ],
                        ),
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
                          image: AssetImage("assets/images/mastercard.png"),
                        ),
                        title: Text('Restaurants'),
                        subtitle: Text('50 Transactions'),
                        trailing: Column(
                          children: [
                            Text("- 0.00"),
                            Text("97%")
                          ],
                        ),
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
                          image: AssetImage("assets/images/mastercard.png"),
                        ),
                        title: Text('Transportation'),
                        subtitle: Text('5 Transactions'),
                        trailing: Column(
                          children: [
                            Text("- 20.00"),
                            Text("50%")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
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
                      onPressed: () {},
                      color: Color.fromRGBO(244, 245, 247, 3),
                      textColor: Colors.white,
                      child: Text("See all",
                          style: TextStyle(
                              fontSize: 14, color: const Color(0xff7a869a))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200.0,
            child: Center(child: Text('Merchant')),
          ),
          Container(
            height: 200.0,
            child: Center(child: Text('Country')),
          ),
        ],
      ),
    );
  }
}
