import 'package:flutter/material.dart';

void main() {
  runApp(MonApp());
}

class MonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Mon Premier Widget')),
        body: MonWidgetPersonnalise(),
      ),
    );
  }
}

class MonWidgetPersonnalise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Bonjour !',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            'Ceci est mon premier widget custom.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
