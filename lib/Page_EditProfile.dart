import 'package:flutter/material.dart';


class Page_EditProfile extends StatefulWidget {
  Page_EditProfile({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _Page_EditProfileState createState() => _Page_EditProfileState();
}

class _Page_EditProfileState extends State<Page_EditProfile> {
  bool value = false;

  TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: "Email Address*");
  }




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
          title: new Text('Edit Profile'),
        ),
        body: SingleChildScrollView(
          child: Card(
            elevation: 15,
            child: Column(
              children: [
                Container(alignment: Alignment.topLeft,child: Text("Email Address*",style: TextStyle(color: Colors.grey)))

                ,Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "nishant8955@gmail.com",
                    ),
                    controller: controller,
                  ),
                )

              ],

            ),

          ),

        ),
      ),
    );
  }
}