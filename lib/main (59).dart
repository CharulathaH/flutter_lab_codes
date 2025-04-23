import 'package:flutter/material.dart';

void main() {
  runApp(DropdownButtonWidgetApp());
}

class DropdownButtonWidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DropdownButton Widget Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DropdownButtonExampleScreen(),
    );
  }
}

class DropdownButtonExampleScreen extends StatefulWidget {
  @override
  _DropdownButtonExampleScreenState createState() => _DropdownButtonExampleScreenState();
}

class _DropdownButtonExampleScreenState extends State<DropdownButtonExampleScreen> {
  // Variable to hold the selected value
  String? _selectedValue;

  // List of items to show in the dropdown
  List<String> _items = ['Apple', 'Banana', 'Cherry', 'Date', 'Elderberry'];

  // Function to handle change in selected value
  void _onDropdownChanged(String? newValue) {
    setState(() {
      _selectedValue = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropdownButton Widget Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // DropdownButton to select a fruit
            DropdownButton<String>(
              value: _selectedValue,
              hint: Text('Select a fruit'),
              onChanged: _onDropdownChanged,
              items: _items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            // Display selected fruit
            Text(
              _selectedValue != null
                  ? 'You selected: $_selectedValue'
                  : 'No fruit selected',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
