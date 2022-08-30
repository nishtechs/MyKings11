import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page_Register extends StatefulWidget {
  Page_Register({Key key}) : super(key: key);

  @override
  _Page_RegisterState createState() => _Page_RegisterState();
}

class _Page_RegisterState extends State<Page_Register> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTER & PLAY"),
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: new EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              children: [
                Card(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      /* mainAxisAlignment: MainAxisAlignment.center,*/
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[


                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              SizedBox(
                                width: 130,
                                child: RaisedButton(
                                  color: Colors.white,
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0.0, vertical: 5.0),
                                        child: Image.asset(
                                          'Assets/facebook.png',
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                      Text(' Facebook'),
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(
                                width: 130   ,
                                child: RaisedButton(
                                  color: Colors.white,
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0.0, vertical: 5.0),
                                        child: Image.asset(
                                          'Assets/google.png',
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                      Text('Google'),
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                        Container(child: Text('OR'),
                        margin: EdgeInsets.only(top: 15),
                        alignment: Alignment.center,
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Card(
                            elevation: 12.0,
                            child: TextField(
                              decoration: new InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.phone_android,
                                    color: Colors.blue,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0),
                                  ),
                                  hintText: 'Mobile Number'),
                              onSubmitted: (newValue) {
                                setState(() {
                                  /* initialText = newValue;
                            _isEditingText = false;*/
                                });
                              },
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "You will receive an OTP for verification",
                              textAlign: TextAlign.start,
                            )),


                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Card(
                            elevation: 12.0,
                            child: TextField(
                              decoration: new InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Colors.blue,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0),
                                  ),
                                  hintText: 'Email'),
                              onSubmitted: (newValue) {
                                setState(() {
                                  /* initialText = newValue;
                            _isEditingText = false;*/
                                });
                              },
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "No spam, We promise!",
                              textAlign: TextAlign.start,
                            )),


                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Card(
                            elevation: 12.0,
                            child: TextField(
                              decoration: new InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.assignment_ind,
                                    color: Colors.blue,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0),
                                  ),
                                  hintText: 'Name'),
                              onSubmitted: (newValue) {
                                setState(() {
                                  /* initialText = newValue;
                            _isEditingText = false;*/
                                });
                              },
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "This is your profile name",
                              textAlign: TextAlign.start,
                            )),


                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Card(
                            elevation: 12.0,
                            child: TextField(
                              decoration: new InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.vpn_key,
                                    color: Colors.blue,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0),
                                  ),
                                  hintText: 'Password'),
                              onSubmitted: (newValue) {
                                setState(() {
                                  /* initialText = newValue;
                            _isEditingText = false;*/
                                });
                              },
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Minimum 8 characters width 1 number/symbol",
                              textAlign: TextAlign.start,
                            )),


                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Card(
                            elevation: 12.0,
                            child: TextField(
                              decoration: new InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.phonelink_ring,
                                    color: Colors.blue,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0),
                                  ),
                                  hintText: 'Referral Code'),
                              onSubmitted: (newValue) {
                                setState(() {});
                              },
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: SizedBox(
                            width: double.infinity,
                            child: RaisedButton(
                              onPressed: () {},
                              color: Colors.blueAccent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                margin:EdgeInsets.symmetric(vertical: 13),
                                child: Text("REGISTER",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15)),
                              ),
                            ),
                          ),
                        )

                        /*

        */
                      ],
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Page_Register()));
                    },
                    child: RichText(
                      text: new TextSpan(
                        // Note: Styles for TextSpans must be explicitly defined.
                        // Child text spans will inherit styles from parent
                        style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                        children: <TextSpan>[
                          new TextSpan(text: 'By registering, I agree Snozer '),
                          new TextSpan(
                              text: 'T&Cs',
                              style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Page_Register()));
                    },
                    child: RichText(
                      text: new TextSpan(
                        // Note: Styles for TextSpans must be explicitly defined.
                        // Child text spans will inherit styles from parent
                        style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                        children: <TextSpan>[
                          new TextSpan(text: 'Already a User? '),
                          new TextSpan(
                              text: 'Log In',
                              style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),



              ],
            )),
      ),
    );
  }
}
