import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent.shade700,
        title: Text("Fency Day"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.send),
              onPressed: () => debugPrint("Icon Send Tapped")),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () => debugPrint("Icon Search Tapped"))
        ],
      ),
      backgroundColor: Colors.grey.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Bonni",
              style: TextStyle(
                  fontSize: 14.50,
                  fontWeight: FontWeight.w400,
                  color: Colors.deepOrange),
            ),
            InkWell(
              child: Text("Button!"),
              onTap: () => debugPrint("Button Tapped!"),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: Icon(Icons.add), title: Text("Hey")),
          new BottomNavigationBarItem(
              icon: Icon(Icons.print), title: Text("Nope")),
          new BottomNavigationBarItem(
              icon: Icon(Icons.call_missed), title: Text("Hello")),
        ],
        onTap: (int i) => debugPrint("Touched $i"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint("Pressed!"),
        backgroundColor: Colors.lightGreen,
        tooltip: 'Going Up',
        child: Icon(Icons.call_missed),
      ),
    );
  }
}
