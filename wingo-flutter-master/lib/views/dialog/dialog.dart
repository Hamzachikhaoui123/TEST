import 'package:flutter/material.dart';

  class DialogScreen extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String message;
  final String message2;
  final String buttonText;

  DialogScreen(
      {Key key,
      @required this.color,
      this.icon,
      this.title,
      this.message,
      this.message2,
      this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: 256,
              width: 500,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 65, 10, 10),
                child: Column(
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      message,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text(
                      message2,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      color: Colors.transparent,
                      child: Text(
                        buttonText,
                        style: TextStyle(color: color, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: -52,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 50,
                  ),
                )),
          ],
        ));
  }
}
