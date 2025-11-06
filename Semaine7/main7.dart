import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: CompteurAvance()));

class CompteurAvance extends StatefulWidget {
  @override
  State<CompteurAvance> createState() => _CompteurAvanceState();
}

class _CompteurAvanceState extends State<CompteurAvance> {
  int compteur = 0;

  void incrementer() {
    setState(() => compteur++);
  }

  void decrementer() {
    setState(() => compteur--);
  }

  void reinitialiser() {
    setState(() => compteur = 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compteur Avancé'),
        actions: [
          IconButton(icon: Icon(Icons.refresh), onPressed: reinitialiser),
        ],
      ),
      body: Center(
        child: Text(
          '$compteur',
          style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: incrementer,
            child: Icon(Icons.add),
            heroTag: 'increment',
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: decrementer,
            child: Icon(Icons.remove),
            heroTag: 'decrement',
          ),
        ],
      ),
    );
  }
}
