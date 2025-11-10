import 'dart:io';

void main() {
  print('=== CALCULATEUR DE PRIX TTC ===');
  print('');
  
  // Demander le prix HT
  print('Entrez le prix HT (hors taxes):');
  String? prixTexte = stdin.readLineSync();
  double prixHT = double.parse(prixTexte ?? '0');
  
  // Demander le taux de TVA
  print('Entrez le taux de TVA (en %, ex: 20):');
  String? tvaTexte = stdin.readLineSync();
  double tauxTVA = double.parse(tvaTexte ?? '20');
  
  // Calculer le prix TTC
  double montantTVA = prixHT * tauxTVA / 100;
  double prixTTC = prixHT + montantTVA;
  
  // Afficher les résultats
  print('');
  print('--- RÉSULTATS ---');
  print('Prix HT:   $prixHT €');
  print('TVA ($tauxTVA%): $montantTVA €');
  print('Prix TTC:  $prixTTC €');
}
