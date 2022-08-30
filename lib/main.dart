import 'package:flutter/material.dart';
import 'package:my_kings_11/Page_Home.dart';

import 'Page_Register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Kings',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(title: 'My Kings'),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _editingController;
  String initialText = "Initial Text";

  @override
  void initState() {
    super.initState();
    _editingController = TextEditingController(text: initialText);
  }

  @override
  void dispose() {
    _editingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: new EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),

          child: Column(
            /* mainAxisAlignment: MainAxisAlignment.center,*/
            children: <Widget>[
              TextField(
                decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width:2.0),
                    ),
                    hintText: 'Email or Mobile No.'),
                onSubmitted: (newValue) {
                  setState(() {
                    initialText = newValue;
                  });
                },
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: ButtonTheme(
                  minWidth: 400.0,
                  height: 45.0,
                  child: RaisedButton(
                    color: Colors.blueAccent,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => Page_Home()));
                    },
                    child: Text('Next',style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 130.0,
                      color: Colors.black,
                    ),
                  ),
                  Text('OR'),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 130.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: ButtonTheme(
                  minWidth: 400.0,
                  height: 45.0,
                  child: RaisedButton(
                    color: Colors.white70,
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 0.0, vertical: 5.0),
                          child: Image.asset(
                            'Assets/facebook.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Text('Login with Facebook'),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ButtonTheme(
                  minWidth: 400.0,
                  height: 45.0,
                  child: RaisedButton(
                    color: Colors.white70,
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 0.0, vertical: 5.0),
                          child: Image.asset(
                            'Assets/google.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Text('Login with Gmail'),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 30),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Page_Register()));
                  },

                  child: Container(
                    margin: EdgeInsets.only(bottom: 50),
                    child: RichText(
                      text: new TextSpan(
                        // Note: Styles for TextSpans must be explicitly defined.
                        // Child text spans will inherit styles from parent
                        style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                        children: <TextSpan>[
                          new TextSpan(text: 'Not a member?'),
                          new TextSpan(
                              text: 'Register',
                              style: new TextStyle(fontWeight: FontWeight.bold,  color: Colors.blue,)),
                        ],
                      ),
                    ),
                  ),

                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
