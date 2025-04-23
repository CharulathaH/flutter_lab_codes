import 'package:flutter/material.dart';

void main() {
  runApp(FormWidgetApp());
}

class FormWidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Form Widget Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FormExampleScreen(),
    );
  }
}

class FormExampleScreen extends StatefulWidget {
  @override
  _FormExampleScreenState createState() => _FormExampleScreenState();
}

class _FormExampleScreenState extends State<FormExampleScreen> {
  // Create a global key to uniquely identify the form
  final _formKey = GlobalKey<FormState>();

  // Define text controllers to get the values from the text fields
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  // Define variables to store input values
  String? _name, _email;

  // Function to validate and submit the form
  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      // If the form is valid, display the input values
      setState(() {
        _name = _nameController.text;
        _email = _emailController.text;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Form Submitted')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Widget Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey, // Assign the global key to the form
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Name Field
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              // Email Field
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$").hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              // Submit Button
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Submit'),
              ),
              SizedBox(height: 20),
              // Display submitted information
              if (_name != null && _email != null)
                Text('Submitted Name: $_name\nSubmitted Email: $_email'),
            ],
          ),
        ),
      ),
    );
  }
}
