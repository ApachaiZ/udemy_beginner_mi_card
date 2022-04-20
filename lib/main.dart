import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String myTitle = "Carte de visite virtuelle";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: myTitle,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(title: Text(myTitle)),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage("assets/images/DS.jpg"),
                ),
                const Text(
                  "Dane SAN",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white,
                    fontFamily: "PermanentMarker",
                  ),
                ),
                Text(
                  "Ingénieur d'études et Développement",
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1.2,
                    color: Colors.teal[100],
                    fontFamily: "CreteRound",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 250,
                  child: Divider(
                    color: Colors.teal.shade100,
                    thickness: 0.7,
                  ),
                ),
                const Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("+33 7 52 07 11 94"),
                  ),
                ),
                const Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(Icons.mail),
                    title: Text("dane.san@outlook.fr"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
