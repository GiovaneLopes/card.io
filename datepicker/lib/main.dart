import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text("CARD.IO"), Icon(Icons.exit_to_app)],
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "DOM",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(50)),
                      width: 60,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("24",
                              style:
                                  TextStyle(fontSize: 22, color: Colors.white))
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        decoration: BoxDecoration(color: Colors.lightBlue, borderRadius: BorderRadius.circular(7)),
                        child: Text(
                          "Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        decoration: BoxDecoration(color: Colors.orangeAccent,  borderRadius: BorderRadius.circular(7)),
                        child: Text(
                          "Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, Lorem Ipsum, ",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
