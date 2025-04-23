import 'package:flutter/material.dart';

void main() {
  runApp(RowWidgetApp());
}

class RowWidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Row Widget Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: RowExampleScreen(),
    );
  }
}

class RowExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Widget Example'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.blueAccent,
              child: Text(
                'First Item',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(width: 20), // Adds space between items
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.greenAccent,
              child: Text(
                'Second Item',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(width: 20),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.orangeAccent,
              child: Text(
                'Third Item',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
