import 'package:flutter/material.dart';

void main() {
  runApp(ContainerWidgetApp());
}

class ContainerWidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Container Widget Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ContainerExampleScreen(),
    );
  }
}

class ContainerExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Widget Example'),
      ),
      body: Center(
        child: Container(
          width: 300.0, // Set the width of the container
          height: 200.0, // Set the height of the container
          padding: EdgeInsets.all(16.0), // Add padding inside the container
          margin: EdgeInsets.all(20.0), // Add margin outside the container
          decoration: BoxDecoration(
            color: Colors.blueAccent, // Background color of the container
            borderRadius: BorderRadius.circular(12.0), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.black26, // Shadow color
                blurRadius: 8.0, // Blur effect for shadow
                offset: Offset(4, 4), // Position of the shadow
              ),
            ],
          ),
          child: Center(
            child: Text(
              'Hello, Flutter! This is a Container widget.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
