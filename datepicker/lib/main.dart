import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _recommendation1 =
      "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos";
  var _recommendation2 =
      "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos,";
  var _tipo1 = "tipo1";
  var _tipo2 = "tipo2";
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
                      style: TextStyle(fontSize: 22),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _buildRecommendation(_recommendation1, _tipo1),
                      _buildRecommendation(_recommendation2, _tipo2),
                    ],
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "SEG",
                      style: TextStyle(fontSize: 22),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(50)),
                      width: 60,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("25",
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _buildRecommendation(_recommendation2, _tipo1),
                      _buildRecommendation(_recommendation1, _tipo2),
                    ],
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "TER",
                      style: TextStyle(fontSize: 22),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50)),
                      width: 60,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("27",
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _buildRecommendation(_recommendation2, _tipo1),
                      _buildRecommendation(_recommendation1, _tipo2),
                      _buildRecommendation(_recommendation1, _tipo2),
                      _buildRecommendation(_recommendation1, _tipo2)
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

Widget _buildRecommendation(String recommendation, String type) {
  return type == "tipo1"
      ? Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Recomendação",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    recommendation,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        )
      : Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(7)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Feito",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    recommendation,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        );
}
