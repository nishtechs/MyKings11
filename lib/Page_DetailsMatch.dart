import 'package:flutter/material.dart';


class Page_DetailsMatch extends StatefulWidget {
  Page_DetailsMatch({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _Page_DetailsMatchState createState() => _Page_DetailsMatchState();
}

class _Page_DetailsMatchState extends State<Page_DetailsMatch> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        backgroundColor: value ? Colors.black : Colors.white,
        appBar: new AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: new Text('Details Matches'),
        ),
        body: Center(
          child: Container(child: Text("asdfasdf"),),
        ),
      ),
    );
  }
}