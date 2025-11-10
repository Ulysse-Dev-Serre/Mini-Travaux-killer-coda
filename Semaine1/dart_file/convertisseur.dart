import 'dart:io';

void main() {
  print('=== CONVERTISSEUR DE DEVISES ===');
  print('');
  
  // Demander le montant en euros
  print('Entrez le montant en euros (€):');
  String? montantTexte = stdin.readLineSync();
  double montantEuros = double.parse(montantTexte ?? '0');
  
  // Demander le taux de change
  print('Entrez le taux de change (ex: 1.10 pour USD, 0.85 pour GBP):');
  String? tauxTexte = stdin.readLineSync();
  double tauxChange = double.parse(tauxTexte ?? '1');
  
  // Calculer le montant converti
  double montantConverti = montantEuros * tauxChange;
  
  // Afficher le résultat
  print('');
  print('--- RÉSULTAT ---');
  print('Montant en euros: $montantEuros €');
  print('Taux de change: $tauxChange');
  print('Montant converti: $montantConverti');
}
