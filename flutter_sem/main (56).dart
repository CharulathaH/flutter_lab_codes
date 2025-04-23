import 'package:flutter/material.dart';

void main() {
  runApp(IconWidgetApp());
}

class IconWidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Icon Widget Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: IconExampleScreen(),
    );
  }
}

class IconExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Widget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // First Icon
            Icon(
              Icons.home,
              color: Colors.blue,
              size: 50,
            ),
            SizedBox(height: 20), // Adds space between icons
            // Second Icon
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 50,
            ),
            SizedBox(height: 20),
            // Third Icon
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 50,
            ),
            SizedBox(height: 20),
            // Fourth Icon with custom size and color
            Icon(
              Icons.settings,
              color: Colors.green,
              size: 60,
            ),
          ],
        ),
      ),
    );
  }
}
