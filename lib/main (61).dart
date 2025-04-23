import 'package:flutter/material.dart';

void main() {
  runApp(RadioButtonWidgetApp());
}

class RadioButtonWidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RadioButton Widget Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: RadioButtonExampleScreen(),
    );
  }
}

class RadioButtonExampleScreen extends StatefulWidget {
  @override
  _RadioButtonExampleScreenState createState() => _RadioButtonExampleScreenState();
}

class _RadioButtonExampleScreenState extends State<RadioButtonExampleScreen> {
  // Variable to hold the selected radio button value
  String? _selectedOption = 'Option 1';

  // Function to handle radio button selection
  void _onRadioChanged(String? value) {
    setState(() {
      _selectedOption = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioButton Widget Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Radio Button for Option 1
            RadioListTile<String>(
              title: Text('Option 1'),
              value: 'Option 1',
              groupValue: _selectedOption,
              onChanged: _onRadioChanged,
            ),
            // Radio Button for Option 2
            RadioListTile<String>(
              title: Text('Option 2'),
              value: 'Option 2',
              groupValue: _selectedOption,
              onChanged: _onRadioChanged,
            ),
            // Radio Button for Option 3
            RadioListTile<String>(
              title: Text('Option 3'),
              value: 'Option 3',
              groupValue: _selectedOption,
              onChanged: _onRadioChanged,
            ),
            SizedBox(height: 20),
            // Display selected option
            Text(
              'Selected Option: $_selectedOption',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
