import 'package:flutter/material.dart';

void main() {
  runApp(TextFieldWidgetApp());
}

class TextFieldWidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TextField Widget Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TextFieldExampleScreen(),
    );
  }
}

class TextFieldExampleScreen extends StatefulWidget {
  @override
  _TextFieldExampleScreenState createState() => _TextFieldExampleScreenState();
}

class _TextFieldExampleScreenState extends State<TextFieldExampleScreen> {
  // Controller for TextField to get input text
  final TextEditingController _controller = TextEditingController();

  // Function to show the input text
  void _showInputText() {
    final inputText = _controller.text;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Input Text'),
          content: Text('You entered: $inputText'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Widget Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // TextField to take user input
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter something',
                border: OutlineInputBorder(),
                hintText: 'Type here...',
              ),
            ),
            SizedBox(height: 20),
            // Button to show entered text
            ElevatedButton(
              onPressed: _showInputText,
              child: Text('Show Entered Text'),
            ),
          ],
        ),
      ),
    );
  }
}
