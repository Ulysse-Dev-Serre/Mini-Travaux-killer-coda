import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: CompteurApp()));

class CompteurApp extends StatefulWidget {
  @override
  State<CompteurApp> createState() => _CompteurAppState();
}

class _CompteurAppState extends State<CompteurApp> {
  int compteur = 0; // Variable d'état

  void incrementer() {
    setState(() {
      compteur++; // Modifier l'état
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Compteur Flutter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Vous avez cliqué ce nombre de fois :',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '$compteur',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementer,
        child: Icon(Icons.add),
      ),
    );
  }
}
