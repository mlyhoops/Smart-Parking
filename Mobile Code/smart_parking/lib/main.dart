import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

var colors = new List(96);
void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Roboto',
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        appBar: new AppBar(
          centerTitle: true ,
          title: new Text('Smart Parking'),
        ),
        body: SingleChildScrollView(
        child: StreamBuilder(
          stream: Firestore.instance.collection('Lot7').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Text('Loading Data... Please Wait...');
            for(var i = 0; i < 96; i++) {
              if (snapshot.data.documents[i]['Open'] == "False") {
                colors[i] = Colors.red;
              }
              else if (snapshot.data.documents[i]['Open'] == "True"){
                colors[i] = Colors.green;
              }
            }

            return Column(
                children: <Widget>[

            new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            new RaisedButton(
            onPressed: changeColor,
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.white,
            color: colors[64],
            child: new Text("7B 1"),
            ),
            new RaisedButton(
            onPressed: changeColor,
            textColor: Colors.white,
            color: colors[32],
            padding: const EdgeInsets.all(8.0),
            child: new Text(
            "7A 33",
            ),
            ),
            new RaisedButton(
              onPressed: changeColor,
              padding: const EdgeInsets.all(8.0),
              textColor: Colors.white,
              color: colors[0],
              child: new Text("7A 1"),
            ),
            ],
            ),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[65],
                  child: new Text("7B 2"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[33],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 34",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[1],
                  child: new Text("7A 2"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[66],
                  child: new Text("7B 3"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[34],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 35",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[2],
                  child: new Text("7A 3"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[67],
                  child: new Text("7B 4"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[35],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 36",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[3],
                  child: new Text("7A 4"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[68],
                  child: new Text("7B 5"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[36],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 37",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[4],
                  child: new Text("7A 5"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[69],
                  child: new Text("7B 6"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[37],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 38",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[5],
                  child: new Text("7A 6"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[70],
                  child: new Text("7B 7"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[38],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 39",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[6],
                  child: new Text("7A 7"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[71],
                  child: new Text("7B 8"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[39],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 40",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[7],
                  child: new Text("7A 8"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[72],
                  child: new Text("7B 9"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[40],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 41",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[8],
                  child: new Text("7A 9"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[73],
                  child: new Text("7B 10"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[41],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 42",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[9],
                  child: new Text("7A 10"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[74],
                  child: new Text("7B 11"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[42],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 43",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[10],
                  child: new Text("7A 11"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[75],
                  child: new Text("7B 12"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[43],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 44",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[11],
                  child: new Text("7A 12"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[76],
                  child: new Text("7B 13"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[44],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 45",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[12],
                  child: new Text("7A 13"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[77],
                  child: new Text("7B 14"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[45],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 46",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[13],
                  child: new Text("7A 14"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[78],
                  child: new Text("7B 15"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[46],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 47",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[14],
                  child: new Text("7A 15"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[79],
                  child: new Text("7B 16"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[47],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 48",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[15],
                  child: new Text("7A 16"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[80],
                  child: new Text("7B 17"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[48],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 49",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[16],
                  child: new Text("7A 17"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[81],
                  child: new Text("7B 18"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[49],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 50",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[17],
                  child: new Text("7A 18"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[82],
                  child: new Text("7B 19"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[50],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 51",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[18],
                  child: new Text("7A 19"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[83],
                  child: new Text("7B 20"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[51],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 52",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[19],
                  child: new Text("7A 20"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[84],
                  child: new Text("7B 21"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[52],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 53",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[20],
                  child: new Text("7A 21"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[85],
                  child: new Text("7B 22"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[53],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 54",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[21],
                  child: new Text("7A 22"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[86],
                  child: new Text("7B 23"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[54],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 55",
                  )
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[22],
                  child: new Text("7A 23"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[87],
                  child: new Text("7B 24"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[55],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 56",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[23],
                  child: new Text("7A 24"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[88],
                  child: new Text("7B 25"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[56],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 57",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[24],
                  child: new Text("7A 25"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[89],
                  child: new Text("7B 26"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[57],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 58",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[25],
                  child: new Text("7A 26"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[90],
                  child: new Text("7B 27"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[58],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 59",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[26],
                  child: new Text("7A 27"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[91],
                  child: new Text("7B 28"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[59],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 60",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[27],
                  child: new Text("7A 28"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[92],
                  child: new Text("7B 29"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[60],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 61",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[28],
                  child: new Text("7A 29"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[93],
                  child: new Text("7B 30"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[61],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 62",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[29],
                  child: new Text("7A 30"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[94],
                  child: new Text("7B 31"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[62],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 63",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[30],
                  child: new Text("7A 31"),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[95],
                  child: new Text("7B 32"),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  textColor: Colors.white,
                  color: colors[63],
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "7A 64",
                  ),
                ),
                new RaisedButton(
                  onPressed: changeColor,
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: colors[31],
                  child: new Text("7A 32"),
                ),
              ],
            ),




            ]
            ,
            );
          },
        )));
  }
}

void buttonPressed() {}

void changeColor() {}