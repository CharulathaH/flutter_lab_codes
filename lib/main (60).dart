import 'package:flutter/material.dart';

void main() {
  runApp(SliderWidgetApp());
}

class SliderWidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Slider Widget Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SliderExampleScreen(),
    );
  }
}

class SliderExampleScreen extends StatefulWidget {
  @override
  _SliderExampleScreenState createState() => _SliderExampleScreenState();
}

class _SliderExampleScreenState extends State<SliderExampleScreen> {
  // Variable to hold the current slider value
  double _sliderValue = 0.0;

  // Function to handle slider value change
  void _onSliderChanged(double value) {
    setState(() {
      _sliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Widget Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Slider widget to adjust the value
            Slider(
              value: _sliderValue,
              min: 0.0,  // Minimum value
              max: 100.0, // Maximum value
              divisions: 100,  // Number of discrete divisions
              label: _sliderValue.round().toString(),
              onChanged: _onSliderChanged,
            ),
            SizedBox(height: 20),
            // Display current slider value
            Text(
              'Current Value: ${_sliderValue.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
