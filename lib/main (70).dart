import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CupertinoButtonApp());
}

class CupertinoButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cupertino Button Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CupertinoButtonExampleScreen(),
    );
  }
}

class CupertinoButtonExampleScreen extends StatelessWidget {
  void _showMessage(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text("Hello!"),
        content: Text("You pressed the CupertinoButton."),
        actions: [
          CupertinoDialogAction(
            child: Text("OK"),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino Button Example'),
      ),
      body: Center(
        child: CupertinoButton(
          color: CupertinoColors.activeBlue,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          borderRadius: BorderRadius.circular(8),
          onPressed: () => _showMessage(context),
          child: Text(
            'Press Me',
            style: TextStyle(color: CupertinoColors.white),
          ),
        ),
      ),
    );
  }
}
