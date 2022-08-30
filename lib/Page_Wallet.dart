import 'package:flutter/material.dart';

import 'Page_Register.dart';


class Page_Wallet extends StatefulWidget {
  Page_Wallet({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _Page_WalletState createState() => _Page_WalletState();
}

class _Page_WalletState extends State<Page_Wallet> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
       // backgroundColor: value ? Colors.black : Colors.white,
        appBar: new AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: new Text('Wallet'),
        ),
        body:    Card(
            child: Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "My Account",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text("₹ 0"), Text("Deposited")],
                        ),
                        Container(height: 80, child: VerticalDivider(color: Colors.black)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text("₹ 0"), Text("Bonus")],
                        ),
                        Container(height: 80, child: VerticalDivider(color: Colors.black)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text("₹ 0"), Text("Winnings")],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 150,
                              child: RaisedButton(
                                shape: StadiumBorder(),
                                color: Colors.green,
                                onPressed: () {},
                                child: Text(
                                  "+ ADD BALANCE",
                                  style: TextStyle(color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ),
                            Container(
                                width: 120,
                                alignment: Alignment.center,
                                child: Text(
                                  "Add Money Credit Card, Debit Card, UPI & More",
                                  style: TextStyle(fontSize: 10),
                                ))
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 150,
                              child: RaisedButton(
                                shape: StadiumBorder(),
                                color: Colors.red,
                                onPressed: () {},
                                child: Text(
                                  "WITHDRAW",
                                  style: TextStyle(color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ),
                            Container(
                                alignment: Alignment.center,
                                width: 120,
                                child: Text(
                                  "Verify Your Account",
                                  style: TextStyle(fontSize: 10),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )), //2nd Card
      ),
    );
  }
}