// Ajouter/retirer produits
// Codes promo
// Frais de livraison variables
// Calcul total complexe

import 'dart:io';

void main() {
  List<String> nomsProduits = []; // List of product names
  List<double> prixProduits = []; // List of product prices (same index)
  double total = 0.0; // Original subtotal (sum of prices)
  double discount = 0.0; // Discount percentage (e.g., 0.1 for 10%)

  while (true) {
    print('=== Gestionnaire de Panier ===');
    print('1. Ajouter un produit');
    print('2. Retirer un produit');
    print('3. Afficher le total');
    print('4. Appliquer un code promo');
    print('5. Afficher tous les produits'); 
    print('6. Quitter');
    print('Choisissez une option(1-6):');
    String? choix = stdin.readLineSync();

    switch (choix) {
      // add product
      case '1':
        print('Entrez le nom du produit à ajouter :');
        String? nom = stdin.readLineSync();
        print('Entrez le prix du produit :');
        double prix;
        try {
          prix = double.parse(stdin.readLineSync() ?? '0');
        } catch (e) {
          print('Prix invalide. Utilisant 0.');
          prix = 0.0;
        }
        nomsProduits.add(nom ?? '');
        prixProduits.add(prix);
        total += prix;
        print('$nom a été ajouté au panier.');
        print('Appuyez sur Entrée pour continuer...');
        stdin.readLineSync();
        break;

      // remove product
      case '2':
        print('Entrez le nom du produit à retirer :');
        String? produitARetirer = stdin.readLineSync();
        int index = nomsProduits.indexOf(produitARetirer ?? '');
        if (index != -1) {
          //index is 0 or higher = product found
          total -= prixProduits[index];
          nomsProduits.removeAt(index);
          prixProduits.removeAt(index);
          print('$produitARetirer a été retiré du panier.');
        } else {
          print('Produit non trouvé.');
        }
        break;

      // display total(with shipping fees)
      case '3':
        print('Produits dans le panier :');
        for (int i = 0; i < nomsProduits.length; i++) {
          print(
            '- ${nomsProduits[i]}: ${prixProduits[i].toStringAsFixed(2)} CAD',
          );
        }
        double discountedTotal = total * (1 - discount);   // Apply discount 
        double fraisLivraison = 0.0;
        String raisonLivraison;
        if (discountedTotal == 0) {
          fraisLivraison = 0.0;      // No shipping if no products
          raisonLivraison = 'aucuns frais car panier vide';
        } else if (discountedTotal < 50) {
          fraisLivraison = 10.0;    // Fixed shipping fee if under 50 CAD
          raisonLivraison = 'fixes car sous-total < 50 CAD';
        } else if (discountedTotal < 100) {
          fraisLivraison = 5.0;    // Reduced shipping fee if between 50 and 100 CAD
          raisonLivraison = 'réduits car sous-total entre 50 et 100 CAD';
        } else {
          fraisLivraison = 0.0;  // Free shipping if 100 CAD or more
          raisonLivraison = 'gratuits car sous-total >= 100 CAD';
        }
        double totalAvecLivraison = discountedTotal + fraisLivraison;
        print(
          'Sous-total (avec remise) : ${discountedTotal.toStringAsFixed(2)} CAD',
        );
        print(
          'Frais de livraison ($raisonLivraison) : ${fraisLivraison.toStringAsFixed(2)} CAD',
        );
        print('Total : ${totalAvecLivraison.toStringAsFixed(2)} CAD');
        break;

      // apply promo code
      case '4':
        print('Voulez-vous appliquer le code promo 10% ? (o-oui/n-non)');
        String? reponse = stdin.readLineSync()?.toLowerCase();
        if (reponse == 'o'|| reponse == 'oui') {
          discount = 0.1;     // Set discount to 10%
          double discountedTotal = total * (1 - discount);
          print(
            'Code promo appliqué. Nouveau sous-total : ${discountedTotal.toStringAsFixed(2)} CAD',
          );
        } else {
          discount = 0.0;     // Reset discount
          print('Code promo non appliqué.');
        }
        break;

      // show all products
      case '5':
        if (nomsProduits.isEmpty) {
          print('Le panier est vide.');
        } else {
          print('Produits dans le panier :');
          for (int i = 0; i < nomsProduits.length; i++) {
            print(
              '- ${nomsProduits[i]}: ${prixProduits[i].toStringAsFixed(2)} CAD',
            );
          }
        }
        break;

      case '6':
        print('Merci d\'avoir utilisé le gestionnaire de panier.');
        return;
      default:
        print('Choix invalide. Veuillez réessayer.');
    }
  }
}
