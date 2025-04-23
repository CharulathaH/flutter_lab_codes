import 'package:flutter/material.dart';

void main() {
  runApp(ColumnWidgetApp());
}

class ColumnWidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Column Widget Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ColumnExampleScreen(),
    );
  }
}

class ColumnExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Widget Example'),
      ),
      body: Center(
        child: Column(
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
            SizedBox(height: 20), // Adds space between items
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
            SizedBox(height: 20),
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
