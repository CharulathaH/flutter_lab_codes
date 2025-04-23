import 'package:flutter/material.dart';

void main() {
  runApp(TextWidgetApp());
}

class TextWidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Text Widget Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TextDisplayScreen(),
    );
  }
}

class TextDisplayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Widget Example'),
      ),
      body: Center(
        child: Text(
          'Hello, Flutter! This is an example of the Text widget.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
