import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double? h;
    double? w;
    w = MediaQuery.of(context).size.width; // defining contants in widget build
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 100, top: 25),
          child: Title(
            color: Colors.black,
            child: Text(
              "Advance Search",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Text('Drag Component'),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  children: List.generate(
                    12,
                    (index) => Container(
                      margin: EdgeInsets.symmetric(vertical: 1),
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your button onPressed logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange[100],
                          fixedSize: Size(100.0, 10.0), // Light orange color
                        ),
                        child: Text(
                          'Button ${index + 1}',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Column(
                  children: [
                    Container(
                      color: Colors.pink.shade400,
                      height: 40,
                      width: 100,
                      child: Text("city", textAlign: TextAlign.center),
                    ),
                    SizedBox(height: 50),
                    Container(
                      color: Colors.pink.shade400,
                      height: 40,
                      width: 100,
                      child: Text("religion", textAlign: TextAlign.center),
                    ),
                    SizedBox(height: 50),
                    Container(
                      color: Colors.pink.shade400,
                      height: 40,
                      width: 100,
                      child: Text("qualification", textAlign: TextAlign.center),
                    ),
                    SizedBox(height: 50),
                    Container(
                      color: Colors.pink.shade400,
                      height: 40,
                      width: 100,
                      child: Text("age", textAlign: TextAlign.center),
                    ),
                    SizedBox(height: 50),
                    Container(
                      color: Colors.pink.shade400,
                      height: 40,
                      width: 100,
                      child: Text("body type", textAlign: TextAlign.center),
                    ),
                    SizedBox(height: 50),
                    Container(
                      color: Colors.pink.shade400,
                      height: 40,
                      width: 100,
                      child: Text("", textAlign: TextAlign.center),
                    ),
                    SizedBox(height: 50),
                    Container(
                      color: Colors.pink.shade400,
                      height: 40,
                      width: 100,
                      child: Text("", textAlign: TextAlign.center),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Column(
                  children: [
                    Container(
                      color: Colors.orange[100],
                      height: 25,
                      width: 130,
                      child: Text("delhi", textAlign: TextAlign.center),
                    ),
                    SizedBox(height: 65),
                    Container(
                      color: Colors.orange[100],
                      height: 25,
                      width: 130,
                      child: Text("Hindu", textAlign: TextAlign.center),
                    ),
                    SizedBox(height: 65),
                    Container(
                      color: Colors.orange[100],
                      height: 25,
                      width: 130,
                      child: Text("graduate", textAlign: TextAlign.center),
                    ),
                    SizedBox(height: 65),
                    Container(
                      color: Colors.orange[100],
                      height: 23,
                      width: 130,
                      child: Text("age", textAlign: TextAlign.center),
                    ),
                    SizedBox(height: 70),
                    Container(
                      color: Colors.orange[100],
                      height: 25,
                      width: 130,
                      child: Text("slim", textAlign: TextAlign.center),
                    ),
                    SizedBox(height: 65),
                    Container(
                      color: Colors.orange[100],
                      height: 25,
                      width: 130,
                      child: Text("", textAlign: TextAlign.center),
                    ),
                    SizedBox(height: 65),
                    Container(
                      color: Colors.orange[100],
                      height: 25,
                      width: 130,
                      child: Text("", textAlign: TextAlign.center),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Add your search button onPressed logic here
              },
              child: Text("Search"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.pink.shade400,
        //onTap: OnTapped,
        items: <Widget>[
          Icon(Icons.settings),
          Icon(Icons.favorite),
          Icon(Icons.home),
          Icon(Icons.chat_bubble),
          Icon(Icons.person),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: Home()));
