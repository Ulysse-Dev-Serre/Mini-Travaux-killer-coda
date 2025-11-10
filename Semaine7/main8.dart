import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: AfficheurNom()));

class AfficheurNom extends StatefulWidget {
  @override
  State<AfficheurNom> createState() => _AfficheurNomState();
}

class _AfficheurNomState extends State<AfficheurNom> {
  String nom = 'Invité';

  void changerNom(String nouveauNom) {
    setState(() {
      nom = nouveauNom;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Afficheur de Nom')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bonjour $nom !', style: TextStyle(fontSize: 28)),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => changerNom('Marie'),
              child: Text('Marie'),
            ),
            ElevatedButton(
              onPressed: () => changerNom('Pierre'),
              child: Text('Pierre'),
            ),
            ElevatedButton(
              onPressed: () => changerNom('Julie'),
              child: Text('Julie'),
            ),
          ],
        ),
      ),
    );
  }
}
