import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Pages extends StatelessWidget {
  final String win;
  final String go;
  final String title;
  final String description;
  final String background;

  Pages({this.win, this.go, this.title, this.description, this.background});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Color(0xff0e4dfb),
            BlendMode.modulate,
          ),
          image: AssetImage(background),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
           Container(
             alignment: Alignment.center,
             margin: EdgeInsets.only(top: MediaQuery.of(context).size.width / 8),
             child: Image(
               image: AssetImage("assets/images/log.png"),
             ),
           ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.width / 1.7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    win,
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 28,
                      color: const Color(0xffe6fcff),
                      fontWeight: FontWeight.w600,
                      height: 1.6428571428571428,
                    ),
                    textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                  ),
                  Text(
                    go,
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 30,
                      color: const Color(0xffffc400),
                      letterSpacing: 0.42,
                      fontWeight: FontWeight.bold,
                      height: 1.6428571428571428,
                    ),
                    textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.width / 50),
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'DMSans-Bold',
                  fontSize: 24,
                  color: const Color(0xffffc400),
                  letterSpacing: -0.3999999847412109,
                  height: 1.3333333333333333,
                ),
                textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.width / 25),
              child: Text(
                description,
                style: TextStyle(
                  fontFamily: 'DMSans-Regular',
                  fontSize: 14,
                  color: const Color(0xffffffff),
                  letterSpacing: -0.3999999961853027,
                  height: 1.7142857142857142,
                ),
                textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ) /* add child content here */,
    );
  }
}