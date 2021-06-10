import 'package:flutter/material.dart';
import 'package:flutter_app/views/onboardingscreen/pages.dart';
import 'package:flutter_app/views/signinScreens/login.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    Pages(
        win: "Win",
        go: "Go",
        title: "Leading Payment\nApplication",
        description:
            "More than 100 million users with 1,000 thousand \npartners and services in the world",
        background: "assets/images/back2.png"),
    Pages(
        win: "Win",
        go: "Go",
        title: "Prestige and Absolute\nSecurity ",
        description:
            "Licensed by all banks in the world & secured with\nmulti-tier PCI-DSS international standards",
        background: "assets/images/back3.png"),
    Pages(
        win: "Win",
        go: "Go",
        title: "Receive "'"Hot"'" Gifts from \nValue Wallet  Right Away",
        description:
            "Sign up now to receive a large gift pack. Eating, \nwatching movies & many other services.",
        background: "assets/images/back4.png"),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (int index) {
                    return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 10,
                        width: (index == _currentPage) ? 30 : 10,
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == _currentPage)
                                ? Colors.white
                                : Colors.white));
                  })),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.width / 15),
                child: Image(
                  image: AssetImage("assets/images/log2.png"),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.width / 10,
                width: MediaQuery.of(context).size.width / 1.25,
                child: InkWell(
                  onTap: () {},
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Login()),
                      );
                    },
                    color: Colors.amber,
                    textColor: Colors.white,
                    child: Text("GET STARTED".toUpperCase(),
                        style: TextStyle(fontSize: 16)),
                  ),
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ],
      ),
    );
  }
}
