import 'package:flutter/material.dart';

void main() {
  runApp(GestureDetectorApp());
}

class GestureDetectorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gesture Detector Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: GestureDemo(),
    );
  }
}

class GestureDemo extends StatefulWidget {
  @override
  _GestureDemoState createState() => _GestureDemoState();
}

class _GestureDemoState extends State<GestureDemo> {
  String _message = "Perform a Gesture";

  void _onTap() {
    setState(() {
      _message = "Single Tap Detected";
    });
  }

  void _onDoubleTap() {
    setState(() {
      _message = "Double Tap Detected";
    });
  }

  void _onLongPress() {
    setState(() {
      _message = "Long Press Detected";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Detector Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _onTap,
          onDoubleTap: _onDoubleTap,
          onLongPress: _onLongPress,
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(12),
            ),
            alignment: Alignment.center,
            child: Text(
              _message,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
