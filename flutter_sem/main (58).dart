import 'package:flutter/material.dart';

void main() {
  runApp(CheckboxWidgetApp());
}

class CheckboxWidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Checkbox Widget Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CheckboxExampleScreen(),
    );
  }
}

class CheckboxExampleScreen extends StatefulWidget {
  @override
  _CheckboxExampleScreenState createState() => _CheckboxExampleScreenState();
}

class _CheckboxExampleScreenState extends State<CheckboxExampleScreen> {
  // State variables to track checkbox selections
  bool _isChecked = false;
  bool _isChecked2 = false;

  // Function to handle checkbox state change
  void _toggleCheckbox(bool? value) {
    setState(() {
      _isChecked = value ?? false;
    });
  }

  void _toggleCheckbox2(bool? value) {
    setState(() {
      _isChecked2 = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Widget Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // First checkbox
            CheckboxListTile(
              title: Text('Accept Terms and Conditions'),
              value: _isChecked,
              onChanged: _toggleCheckbox,
              activeColor: Colors.green,
              controlAffinity: ListTileControlAffinity.leading,
            ),
            SizedBox(height: 20),
            // Second checkbox
            CheckboxListTile(
              title: Text('Subscribe to Newsletter'),
              value: _isChecked2,
              onChanged: _toggleCheckbox2,
              activeColor: Colors.blue,
              controlAffinity: ListTileControlAffinity.leading,
            ),
            SizedBox(height: 20),
            // Display selected checkbox states
            Text(
              _isChecked ? 'Terms Accepted' : 'Terms Not Accepted',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              _isChecked2 ? 'Subscribed to Newsletter' : 'Not Subscribed',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
