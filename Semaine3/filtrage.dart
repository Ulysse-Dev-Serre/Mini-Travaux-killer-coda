void main() {
  List<Map<String, dynamic>> produits = [
    {'nom': 'iPhone', 'prix': 999.99, 'stock': 10},
    {'nom': 'iPad', 'prix': 599.99, 'stock': 0},
    {'nom': 'MacBook', 'prix': 1499.99, 'stock': 5},
    {'nom': 'AirPods', 'prix': 199.99, 'stock': 20},
  ];
  
  print('=== CATALOGUE PRODUITS ===');
  
  // Produits en stock
  var enStock = produits.where((p) => p['stock'] > 0).toList();
  print('Produits disponibles: ${enStock.length}');
  
  // Produits chers (> 500€)
  var chers = produits.where((p) => p['prix'] > 500).toList();
  print('Produits premium: ${chers.length}');
  
  // Noms de tous les produits
  var noms = produits.map((p) => p['nom']).toList();
  print('Noms: $noms');
  
  // Prix total du stock
  double total = 0;
  for (var p in produits) {
    total += p['prix'] * p['stock'];
  }
  print('Valeur totale stock: ${total.toStringAsFixed(2)}€');
}