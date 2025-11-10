import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: PageAccueil()));

class PageAccueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets Réutilisables')),
      body: Column(
        children: [
          CarteProduit(nom: 'iPhone 15', prix: 999.99),
          CarteProduit(nom: 'iPad Air', prix: 599.99),
          CarteProduit(nom: 'MacBook Pro', prix: 1499.99),
        ],
      ),
    );
  }
}

class CarteProduit extends StatelessWidget {
  final String nom;
  final double prix;

  CarteProduit({required this.nom, required this.prix});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(nom, style: TextStyle(fontSize: 18)),
          Text(
            '${prix}€',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
