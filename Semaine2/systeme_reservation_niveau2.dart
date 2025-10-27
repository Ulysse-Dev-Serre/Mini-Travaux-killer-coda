// Date, nombre de personnes
// Tarifs selon saison
// Réductions selon durée
// Calcul total

import 'dart:io';

void main() {
  print('=== SYSTEME DE RESERVATION ===');
  print('Entrez la date (jj/mm/aaaa):');
  String? inputDate = stdin.readLineSync();
  DateTime? date;
  try {
    // Assuming input is dd/mm/yyyy, split and parse
    List<String> parts = (inputDate ?? '01/01/2025').split('/');
    date = DateTime(
      int.parse(parts[2]),
      int.parse(parts[1]),
      int.parse(parts[0]),
    );
  } catch (e) {
    print('Date invalide. Utilisant la date par défaut.');
    date = DateTime(2025, 1, 1);
  }

  print('Entrez le nombre de personnes:');
  String? inputNbPersonnes = stdin.readLineSync();
  int nbPersonnes = 1;
  try {
    nbPersonnes = int.parse(inputNbPersonnes ?? '1');
    if (nbPersonnes <= 0) {
      print('Nombre invalide, il doit être positif. Utilisant 1.');
      nbPersonnes = 1;
    }
  } catch (e) {
    print('Nombre de personnes invalide. Utilisant 1.');
    nbPersonnes = 1;
  }

  print('Entrez la saison (hiver, printemps, ete, automne):');
  String? saison = stdin.readLineSync()?.toLowerCase() ?? 'hiver';

  if (saison != 'hiver' &&
      saison != 'printemps' &&
      saison != 'ete' &&
      saison != 'automne') {
    print('Saison invalide. Utilisant hiver.');
    saison = 'hiver';
  }

  print('Entrez la durée de la reservation (en jours):');
  String? inputDuree = stdin.readLineSync();
  int duree;
  try {
    duree = int.parse(inputDuree ?? '1');
    if (duree <= 0) throw Exception('Durée invalide');
  } catch (e) {
    print('Durée invalide. Utilisant 1 jour.');
    duree = 1;
  }
  
  //methode 1: if/else 
  // double tarif = 0.0;
  // if (saison == 'hiver') {
  //   tarif = 50.0;
  // } else if (saison == 'printemps') {
  //   tarif = 100.0;
  // } else if (saison == 'ete') {
  //   tarif = 150.0;
  // } else if (saison == 'automne') {
  //   tarif = 120.0; 
  // } else {
  //   tarif = 50.0;
  // }

 //methode 2: map des saisons et tarifs 
  Map<String, double> tarifs = {
    'hiver': 50.0,
    'printemps': 100.0,
    'ete': 150.0,
    'automne': 120.0,
  };

  double tarif = tarifs[saison] ?? 50.0; 

  double reduction = 0.0;
  if (duree >= 7) {
    reduction = tarif * 0.2;
  } else if (duree >= 3) {
    reduction = tarif * 0.1;
  }

  double total = (tarif - reduction) * nbPersonnes;
  print(
      'Date : $date\n'
      'Nombre de personnes : $nbPersonnes\n'
      'Saison : $saison\n'
      'Durée de la réservation : $duree jours\n'
      'Tarif par personne : ${tarif.toStringAsFixed(2)} CAD\n'
      'Réduction applicable : ${reduction.toStringAsFixed(2)} CAD\n'
      'Coût total de la réservation : ${total.toStringAsFixed(2)} CAD'
  );
}
