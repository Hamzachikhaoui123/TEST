import 'package:flutter/material.dart';

class TransferSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: 500,
              width: 500,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 65, 10, 10),
                child: Column(
                  children: [
                    Text(
                      'Transfer money was successful',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'You Earned 50 Points',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "1,240.00",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.amber,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Request Amount",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'From',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'CaPay',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                      trailing: Column(
                        children: [
                          Text(
                            'Stella Cobb',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '**** 9999',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'To',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Credit Card',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                      trailing: Column(
                        children: [
                          Text(
                            'Orhan Ozdemir',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Visa 8888',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Row(
                        children: [
                          Text(
                            'Date',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      trailing: Column(
                        children: [
                          Text(
                            '24 Jul 2020',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '15:30',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      color: Colors.transparent,
                      child: Text(
                        'GO BACK TO HOME',
                        style: TextStyle(color: Colors.amber, fontSize: 16),
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
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.credit_card_sharp,
                    color: Colors.white,
                    size: 50,
                  ),
                )),
          ],
        ));
  }
}
