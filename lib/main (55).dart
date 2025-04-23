import 'package:flutter/material.dart';

void main() {
  runApp(StackWidgetApp());
}

class StackWidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stack Widget Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: StackExampleScreen(),
    );
  }
}

class StackExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget Example'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // First widget in the stack (background)
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            // Second widget in the stack (middle)
            Positioned(
              top: 20,
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            // Third widget in the stack (foreground)
            Positioned(
              bottom: 20,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            // Text widget placed on top of the stack
            Positioned(
              child: Text(
                'Stacked Widgets',
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
