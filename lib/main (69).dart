import 'package:flutter/material.dart';

void main() {
  runApp(DisplayWidgetsApp());
}

class DisplayWidgetsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DisplayWidgetsScreen(),
    );
  }
}

class DisplayWidgetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Different Display Widgets')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text Widget
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '1. Text Widget Example',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'This is a simple text widget with styling.',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
            ),

            // Image Widget
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '2. Image Widget Example',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Image.network(
                'https://flutter.dev/assets/homepage/carousel/slide_1-layer_0-6a03b2d9e1283fd6df047b6a58d21b79332fa7a54cd58b5027cd0c4d5f1b56d5.png',
                width: 200,
                height: 100,
              ),
            ),

            // Icon Widget
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '3. Icon Widget Example',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Icon(Icons.star, size: 50, color: Colors.amber),
            ),

            // Progress Indicators
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '4. Progress Indicator Example',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: CircularProgressIndicator(),
            ),
            SizedBox(height: 10),
            Center(
              child: LinearProgressIndicator(),
            ),

            // Card Widget
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '5. Card Widget Example',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text('This is a simple Card Widget'),
              ),
            ),

            // ListView Widget
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '6. ListView Widget Example',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                children: [
                  ListTile(title: Text('Item 1')),
                  ListTile(title: Text('Item 2')),
                  ListTile(title: Text('Item 3')),
                ],
              ),
            ),

            // GridView Widget
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '7. GridView Widget Example',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 200,
              padding: EdgeInsets.all(10),
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Container(color: Colors.red, height: 100, width: 100),
                  Container(color: Colors.blue, height: 100, width: 100),
                  Container(color: Colors.green, height: 100, width: 100),
                  Container(color: Colors.yellow, height: 100, width: 100),
                ],
              ),
            ),

            // Table Widget
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '8. Table Widget Example',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Table(
                border: TableBorder.all(),
                children: [
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(8), child: Text('Row 1 Col 1')),
                    Padding(
                        padding: EdgeInsets.all(8), child: Text('Row 1 Col 2')),
                  ]),
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(8), child: Text('Row 2 Col 1')),
                    Padding(
                        padding: EdgeInsets.all(8), child: Text('Row 2 Col 2')),
                  ]),
                ],
              ),
            ),

            // DataTable Widget
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                '9. DataTable Widget Example',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: DataTable(
                columns: [
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Age')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Alice')),
                    DataCell(Text('25')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Bob')),
                    DataCell(Text('30')),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
