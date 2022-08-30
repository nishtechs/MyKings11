import 'package:flutter/material.dart';

class Page_Notifications extends StatefulWidget {
  Page_Notifications({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Page_NotificationsState createState() => _Page_NotificationsState();
}

class _Page_NotificationsState extends State<Page_Notifications> {
  bool value = false;

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



  var now = new DateTime.now();

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
            title: new Text('Notifications'),
          ),
          body: Container(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: ListView.builder(
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return index==1?Card(
                                elevation: 15,
                                child: InkWell(
                                  onTap: () {

                                  },
                                  child: Container(
                                      margin: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 25),
                                      child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                                          "Lorem I's ", style: TextStyle(fontWeight: FontWeight.w800,fontSize: 15),)
                                  )
                                ),
                              ):Container(child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                child: Text("${now.day}/ ${now.month}/${now.year}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),))
                              ),);
                            }),
                      ),
                    )
                  ],
                ),
              ),
          )
      ),
    );
  }
}