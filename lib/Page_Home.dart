import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown_timer.dart';
import 'package:my_kings_11/Constants.dart';
import 'package:my_kings_11/Page_DetailsMatch.dart';
import 'package:my_kings_11/Page_EditProfile.dart';
import 'package:my_kings_11/Page_Notifications.dart';
import 'package:my_kings_11/Page_Wallet.dart';

class Page_Home extends StatefulWidget {
  Page_Home({Key key}) : super(key: key);

  @override
  _Page_HomeState createState() => _Page_HomeState();
}

class _Page_HomeState extends State<Page_Home> {
  @override
  void initState() {
    super.initState();
  }

  final europeanCountries = [
    'Albania',
    'Andorra',
    'Armenia',
    'Austria',
    'Azerbaijan',
    'Belarus',
    'Belgium',
    'Bosnia and Herzegovina',
    'Bulgaria',
    'Croatia',
    'Cyprus',
    'Czech Republic',
    'Denmark',
    'Estonia',
    'Finland',
    'France',
    'Georgia',
    'Germany',
    'Greece',
    'Hungary',
    'Iceland',
    'Ireland',
    'Italy',
    'Kazakhstan',
    'Kosovo',
    'Latvia',
    'Liechtenstein',
    'Lithuania',
    'Luxembourg',
    'Macedonia',
    'Malta',
    'Moldova',
    'Monaco',
    'Montenegro',
    'Netherlands',
    'Norway',
    'Poland',
    'Portugal',
    'Romania',
    'Russia',
    'San Marino',
    'Serbia',
    'Slovakia',
    'Slovenia',
    'Spain',
    'Sweden',
    'Switzerland',
    'Turkey',
    'Ukraine',
    'United Kingdom',
    'Vatican City'
  ];

  var _bottomindex = 0;

  Future<bool> _onBackPressed() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              new GestureDetector(
                onTap: () => Navigator.of(context).pop(false),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text("NO"),
                ),
              ),
              SizedBox(height: 16),
              new GestureDetector(
                onTap: () => Navigator.of(context).pop(true),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0, right: 10),
                  child: Text("YES"),
                ),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
              child: Image.asset(
                'Assets/logomk.png',
                fit: BoxFit.contain,
                height: 30,
              ),
            ),
          ),
          actions: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.only(right: 5),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  border: new Border.all(color: Colors.transparent, width: 2.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page_Wallet()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'Assets/wallet.png',
                          height: 20,
                          width: 20,
                        ),
                        Text(
                          '100',
                          style: TextStyle(fontSize: 12.0, color: Colors.black, fontWeight: FontWeight.bold, fontFamily: 'Assets/Fonts/SF-UI-Text-Regular.otf'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page_Notifications()));
                  },
                  child: Icon(
                    Icons.notifications,
                    size: 26.0,
                  ),
                )),
          ],
        ),
        body: _bottomindex == 0
            ? Container(
                //Home Tab
                height: double.infinity,
                width: double.infinity,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.blueAccent,
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: RaisedButton(
                                onPressed: () {},
                                child: Container(
                                  height: 50,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image(
                                        image: AssetImage('Assets/cricket.png'),
                                        height: 20,
                                        width: 20,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "cricket",
                                          style: TextStyle(fontSize: 9),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                color: Colors.blueAccent,
                                textColor: Colors.white,
                              ),
                            ),
                            Flexible(
                              child: RaisedButton(
                                onPressed: () {},
                                child: Container(
                                  height: 50,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image(
                                        image: AssetImage('Assets/baseball.png'),
                                        height: 20,
                                        width: 20,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "baseball",
                                          style: TextStyle(fontSize: 9),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                color: Colors.blueAccent,
                                textColor: Colors.white,
                              ),
                            ),
                            Flexible(
                              child: RaisedButton(
                                onPressed: () {},
                                child: Container(
                                  height: 50,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image(
                                        image: AssetImage('Assets/net.png'),
                                        height: 20,
                                        width: 20,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "basketball",
                                          style: TextStyle(fontSize: 9),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                color: Colors.blueAccent,
                                textColor: Colors.white,
                              ),
                            ),
                            Flexible(
                              child: RaisedButton(
                                onPressed: () {},
                                child: Container(
                                  height: 50,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image(
                                        image: AssetImage('Assets/fight.png'),
                                        height: 20,
                                        width: 20,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Kabbadi",
                                          style: TextStyle(fontSize: 9),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                color: Colors.blueAccent,
                                textColor: Colors.white,
                              ),
                            ),
                            Flexible(
                              child: RaisedButton(
                                onPressed: () {},
                                /*shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0))),*/
                                child: Container(
                                  height: 50,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image(
                                        image: AssetImage('Assets/football.png'),
                                        height: 20,
                                        width: 20,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Football",
                                          style: TextStyle(fontSize: 9),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                color: Colors.blueAccent,
                                textColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 0, bottom: 5),
                        child: CarouselSlider(
                          options: CarouselOptions(
                            height: 95.0,
                            aspectRatio: 20 / 9,
                            viewportFraction: 0.8,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration: Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            scrollDirection: Axis.horizontal,
                          ),
                          items: [1, 2, 3, 4].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 20,
                                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                                    decoration: BoxDecoration(color: Colors.transparent),
                                    child: i == 1
                                        ? Image.asset("Assets/banner44.jpg")
                                        : i == 2 ? Image.asset("Assets/banner44.jpg") : i == 3 ? Image.asset("Assets/banner44.jpg") : Image.asset("Assets/banner44.jpg"));
                              },
                            );
                          }).toList(),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: ListView.builder(
                              itemCount: europeanCountries.length,
                              itemBuilder: (context, index) {
                                return Card(
                                  elevation: 05,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page_DetailsMatch()));
                                    },
                                    child: Container(
                                        margin: EdgeInsets.only(top: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                              "Assets/PBV (9).png",
                                              height: 100,
                                              width: 100,
                                            ),
                                            Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Opacity(
                                                    opacity: 0.2,
                                                    child: Image.asset(
                                                      "Assets/versusBattle.png",
                                                      height: 90,
                                                      width: 90,
                                                    )),
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      europeanCountries[index].toString(),
                                                      style: TextStyle(fontSize: 15),
                                                    ),
                                                    CountdownTimer(
                                                      endTime: DateTime.now().millisecondsSinceEpoch + 1000 * 60 * 60,
                                                      defaultDays: "==",
                                                      defaultHours: "--",
                                                      defaultMin: "**",
                                                      defaultSec: "++",
                                                      daysSymbol: ":days",
                                                      hoursSymbol: ":h ",
                                                      minSymbol: ":m ",
                                                      secSymbol: ":s",
                                                      daysTextStyle: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold),
                                                      hoursTextStyle: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold),
                                                      minTextStyle: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold),
                                                      secTextStyle: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold),
                                                      daysSymbolTextStyle: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold),
                                                      hoursSymbolTextStyle: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold),
                                                      minSymbolTextStyle: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold),
                                                      secSymbolTextStyle: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Image.asset(
                                              "Assets/PBV 3.png",
                                              height: 100,
                                              width: 100,
                                            )
                                          ],
                                        )),
                                  ),
                                );
                              }),
                        ),
                      )
                    ],
                  ),
                ),
              ) //Ist Home Tab
            /////////////////////////////////////////////////////////  Hoeme and match tab
            : _bottomindex == 1
                ? Container(
                    //Home Tab
                    height: double.infinity,
                    width: double.infinity,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              child: ListView.builder(
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return Card(
                                      elevation: 05,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page_DetailsMatch()));
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Image.asset(
                                                  "Assets/PBV (9).png",
                                                  height: 100,
                                                  width: 100,
                                                ),
                                                Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Opacity(
                                                        opacity: 0.2,
                                                        child: Image.asset(
                                                          "Assets/versusBattle.png",
                                                          height: 90,
                                                          width: 90,
                                                        )),
                                                    Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          europeanCountries[index].toString(),
                                                          style: TextStyle(fontSize: 15),
                                                        ),
                                                        CountdownTimer(
                                                          endTime: DateTime.now().millisecondsSinceEpoch + 1000 * 60 * 60,
                                                          defaultDays: "==",
                                                          defaultHours: "--",
                                                          defaultMin: "**",
                                                          defaultSec: "++",
                                                          daysSymbol: ":days",
                                                          hoursSymbol: ":h ",
                                                          minSymbol: ":m ",
                                                          secSymbol: ":s",
                                                          daysTextStyle: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold),
                                                          hoursTextStyle: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold),
                                                          minTextStyle: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold),
                                                          secTextStyle: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold),
                                                          daysSymbolTextStyle: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold),
                                                          hoursSymbolTextStyle: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold),
                                                          minSymbolTextStyle: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold),
                                                          secSymbolTextStyle: TextStyle(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Image.asset(
                                                  "Assets/PBV 3.png",
                                                  height: 100,
                                                  width: 100,
                                                )
                                              ],
                                            )),
                                      ),
                                    );
                                  }),
                            ),
                          )
                        ],
                      ),
                    ),
                  ) //IInd My Matches Tab
                /////////////////////////////////////////////////////////  match and Blank Tab
                : _bottomindex == 2
                    ? Container(
                        height: double.infinity,
                        width: double.infinity,
                        color: Colors.yellow,
                        child: Text(" index = $_bottomindex  "),
                      ) // IIIrd  Blank List Tab
                    ///////////////////////////////////////////////////////// Blank and My account tab
                    : _bottomindex == 3
                        ? Container(
                            height: double.infinity,
                            width: double.infinity,
                            color: Colors.orange,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Card(
                                        child: Container(
                                            alignment: Alignment.topLeft,
                                            width: double.infinity,
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 100,
                                                        backgroundImage: AssetImage('Assets/banner1.jpg'),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.symmetric(vertical:6.0),
                                                        child: Text(
                                                          "My Kings",
                                                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.symmetric(vertical: 6),
                                                        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                          Icon(
                                                            Icons.phone_android,
                                                            color: Colors.black,
                                                          ),
                                                          Text("+91 9828989898",
                                                              style: TextStyle(
                                                                fontSize: 20,
                                                              )),
                                                        ]),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.symmetric(vertical:6.0),
                                                        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                          Icon(
                                                            Icons.mail,
                                                            color: Colors.black,
                                                          ),
                                                          Text("mykingsdigital@gmail.com",
                                                              style: TextStyle(
                                                                fontSize: 20,
                                                              )),
                                                        ]),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.all(10),
                                                  alignment: Alignment.topRight,
                                                  child: InkWell(
                                                      onTap: () {
                                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page_EditProfile()));
                                                      },
                                                      child: Icon(Icons.mode_edit)),
                                                )
                                              ],
                                            ))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(
                                          Icons.lock,
                                          color: Colors.red,
                                        ),
                                        Text(
                                          "Change Password",
                                          style: TextStyle(color: Colors.black, fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Card(
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
                                    )),
                                  ), //2nd Card

                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Card(
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
                                                  "Playing History",
                                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                                )),
                                            //Container(height: 80, child: VerticalDivider(color: Colors.black)),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  width: 70,
                                                  alignment: Alignment.center,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [Text("₹ 0"), Text("Contest")],
                                                  ),
                                                ),
                                                Container(height: 80, child: VerticalDivider(color: Colors.black)),
                                                Container(
                                                  width: 70,
                                                  alignment: Alignment.center,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [Text("₹ 0"), Text("Matches")],
                                                  ),
                                                ),
                                              ],
                                            ),

                                            Divider(
                                              color: Colors.black,
                                              height: 0,
                                              thickness: 1,
                                              indent: 5,
                                              endIndent: 5,
                                            ),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  width: 70,
                                                  alignment: Alignment.center,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [Text("₹ 0"), Text("Series")],
                                                  ),
                                                ),
                                                Container(height: 80, child: VerticalDivider(color: Colors.black)),
                                                Container(
                                                  width: 70,
                                                  alignment: Alignment.center,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [Text("₹ 0"), Text("Wins")],
                                                  ),
                                                ),
                                              ],
                                            ),

                                            /*Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [Text("₹ 0"), Text("Bonus")],
                                                ),*/
                                          ],
                                        ),
                                      ),
                                    )),
                                  ), //3rd Card

                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          width: 150,
                                          child: RaisedButton(
                                            shape: StadiumBorder(),
                                            color: Colors.teal,
                                            onPressed: () {},
                                            child: Text(
                                              "Transaction History",
                                              style: TextStyle(color: Colors.white, fontSize: 12),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          child: RaisedButton(
                                            shape: StadiumBorder(),
                                            color: Colors.teal,
                                            onPressed: () {},
                                            child: Text(
                                              "Withdrawl History",
                                              style: TextStyle(color: Colors.white, fontSize: 12),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    width: 360,
                                    child: RaisedButton(
                                      color: Colors.white,
                                      shape: StadiumBorder(),
                                      onPressed: () {},
                                      child: Text(
                                        "Logout",
                                        style: TextStyle(color: Colors.black, fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ) //IVth My Account Tab
                        /////////////////////////////////////////////////////////  My Account and More Tab
                        : Container(
                            //MORE
                            height: double.infinity,
                            width: double.infinity,
                            color: Colors.teal,
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                                child: Column(
                                  children: [
                                    Card(
                                        child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 15, bottom: 10, left: 10, right: 10),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      'Assets/refer.png',
                                                      height: 20,
                                                      width: 20,
                                                    ),
                                                    Container(margin: EdgeInsets.only(left: 20), child: Text("Invite Friend")),
                                                  ],
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_right,
                                                  color: Colors.grey,
                                                  size: 30.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 10,
                                            child: const Divider(
                                              color: Colors.grey,
                                              height: 5,
                                              thickness: 1,
                                              indent: 10,
                                              endIndent: 10,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 7),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      'Assets/queue.png',
                                                      height: 20,
                                                      width: 20,
                                                    ),
                                                    Container(margin: EdgeInsets.only(left: 20), child: Text("Contest Invite Code")),
                                                  ],
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_right,
                                                  color: Colors.grey,
                                                  size: 30.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 10,
                                            child: const Divider(
                                              color: Colors.grey,
                                              height: 5,
                                              thickness: 1,
                                              indent: 10,
                                              endIndent: 10,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 7),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      'Assets/atm.png',
                                                      height: 20,
                                                      width: 20,
                                                    ),
                                                    Container(margin: EdgeInsets.only(left: 20), child: Text("Withdraw Policy")),
                                                  ],
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_right,
                                                  color: Colors.grey,
                                                  size: 30.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 10,
                                            child: const Divider(
                                              color: Colors.grey,
                                              height: 5,
                                              thickness: 1,
                                              indent: 10,
                                              endIndent: 10,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 7),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      'Assets/personal-information.png',
                                                      height: 20,
                                                      width: 20,
                                                    ),
                                                    Container(margin: EdgeInsets.only(left: 20), child: Text("About Us")),
                                                  ],
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_right,
                                                  color: Colors.grey,
                                                  size: 30.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 10,
                                            child: const Divider(
                                              color: Colors.grey,
                                              height: 5,
                                              thickness: 1,
                                              indent: 10,
                                              endIndent: 10,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      'Assets/play.png',
                                                      height: 20,
                                                      width: 20,
                                                    ),
                                                    Container(margin: EdgeInsets.only(left: 20), child: Text("How to play")),
                                                  ],
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_right,
                                                  color: Colors.grey,
                                                  size: 30.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 10,
                                            child: const Divider(
                                              color: Colors.grey,
                                              height: 5,
                                              thickness: 1,
                                              indent: 10,
                                              endIndent: 10,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      'Assets/lesson.png',
                                                      height: 20,
                                                      width: 20,
                                                    ),
                                                    Container(margin: EdgeInsets.only(left: 20), child: Text("Tutorial Videos")),
                                                  ],
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_right,
                                                  color: Colors.grey,
                                                  size: 30.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 10,
                                            child: const Divider(
                                              color: Colors.grey,
                                              height: 5,
                                              thickness: 1,
                                              indent: 10,
                                              endIndent: 10,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      'Assets/question.png',
                                                      height: 20,
                                                      width: 20,
                                                    ),
                                                    Container(margin: EdgeInsets.only(left: 20), child: Text("FAQs")),
                                                  ],
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_right,
                                                  color: Colors.grey,
                                                  size: 30.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 10,
                                            child: const Divider(
                                              color: Colors.grey,
                                              height: 5,
                                              thickness: 1,
                                              indent: 10,
                                              endIndent: 10,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      'Assets/reward.png',
                                                      height: 20,
                                                      width: 20,
                                                    ),
                                                    Container(margin: EdgeInsets.only(left: 20), child: Text("Fantasy Point System")),
                                                  ],
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_right,
                                                  color: Colors.grey,
                                                  size: 30.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 10,
                                            child: const Divider(
                                              color: Colors.grey,
                                              height: 5,
                                              thickness: 1,
                                              indent: 10,
                                              endIndent: 10,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      'Assets/content.png',
                                                      height: 20,
                                                      width: 20,
                                                    ),
                                                    Container(margin: EdgeInsets.only(left: 20), child: Text("MyKings11 Blog")),
                                                  ],
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_right,
                                                  color: Colors.grey,
                                                  size: 30.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 10,
                                            child: const Divider(
                                              color: Colors.grey,
                                              height: 5,
                                              thickness: 1,
                                              indent: 10,
                                              endIndent: 10,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      'Assets/terms-and-conditions.png',
                                                      height: 20,
                                                      width: 20,
                                                    ),
                                                    Container(margin: EdgeInsets.only(left: 20), child: Text("Terms & Conditions")),
                                                  ],
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_right,
                                                  color: Colors.grey,
                                                  size: 30.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 10,
                                            child: const Divider(
                                              color: Colors.grey,
                                              height: 5,
                                              thickness: 1,
                                              indent: 10,
                                              endIndent: 10,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      'Assets/privacy-policy.png',
                                                      height: 20,
                                                      width: 20,
                                                    ),
                                                    Container(margin: EdgeInsets.only(left: 20), child: Text("Privacy Policy")),
                                                  ],
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_right,
                                                  color: Colors.grey,
                                                  size: 30.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 10,
                                            child: const Divider(
                                              color: Colors.grey,
                                              height: 5,
                                              thickness: 1,
                                              indent: 10,
                                              endIndent: 10,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 7, bottom: 15, left: 10, right: 10),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      'Assets/law.png',
                                                      height: 20,
                                                      width: 20,
                                                    ),
                                                    Container(margin: EdgeInsets.only(left: 20), child: Text("Legalities")),
                                                  ],
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_right,
                                                  color: Colors.grey,
                                                  size: 30.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                                    Container(
                                        margin: EdgeInsets.only(top: 10, bottom: 30),
                                        child: Text(
                                          "Version " + Constants.Version,
                                          style: TextStyle(color: Colors.white, fontSize: 13, fontFamily: "Assets/Fonts/SF-UI-Text-Regular.otf"),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ), // Vth More Tab
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.blue,
          backgroundColor: _bottomindex == 0 ? Colors.transparent : _bottomindex == 1 ? Colors.white : _bottomindex == 2 ? Colors.yellow : _bottomindex == 3 ? Colors.orange : Colors.teal,
          buttonBackgroundColor: Colors.cyanAccent,
          items: [
            Icon(
              Icons.home,
              size: 20,
              color: Colors.black,
            ),
            Image.asset(
              'Assets/goal.png',
              height: 20,
              width: 20,
            ),
            Icon(
              Icons.list,
              size: 20,
              color: Colors.black,
            ),
            Icon(
              Icons.account_circle,
              size: 20,
              color: Colors.black,
            ),
            Icon(
              Icons.more_horiz,
              size: 20,
              color: Colors.black,
            )
          ],
          index: 0,
          animationDuration: Duration(milliseconds: 100),
          animationCurve: Curves.bounceInOut,
          onTap: (index) {
            setState(() {
              _bottomindex = index;
            });
            /*debugPrint("Current Index is $index");*/
          },
        ),
      ),
    );
  }
}
