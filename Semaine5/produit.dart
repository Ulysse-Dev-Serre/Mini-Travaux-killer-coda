class Produit {
  String nom;
  double prix;
  int stock;

  Produit(this.nom, this.prix, this.stock);

  void afficher() {
    print('Produit: $nom');
    print('Prix: $prix€');
    print('Stock: $stock unités');
  }

  double calculerTotal() {
    return prix * stock;
  }

  bool estDisponible() {
    return stock > 0;
  }
}

void main() {
  Produit iphone = Produit('iPhone 15', 999.99, 10);
  iphone.afficher();

  print('Valeur stock: ${iphone.calculerTotal()}€');
  print('Disponible: ${iphone.estDisponible()}');
}
