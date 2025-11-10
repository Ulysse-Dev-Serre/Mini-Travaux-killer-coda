import 'dart:io';

void main() {
  print('=== INFORMATIONS SUR LES MOIS ===');
  print('Entrez un numéro de mois (1-12):');

  String? input = stdin.readLineSync();
  int mois = int.parse(input ?? '0');

  String nomMois;
  int jours;
  String saison;

  switch (mois) {
    case 1:
      nomMois = 'Janvier';
      jours = 31;
      saison = 'Hiver';
      break;
    case 2:
      nomMois = 'Février';
      jours = 28;
      saison = 'Hiver';
      break;
    case 3:
      nomMois = 'Mars';
      jours = 31;
      saison = 'Printemps';
      break;
    case 4:
      nomMois = 'Avril';
      jours = 30;
      saison = 'Printemps';
      break;
    case 5:
      nomMois = 'Mai';
      jours = 31;
      saison = 'Printemps';
      break;
    case 6:
      nomMois = 'Juin';
      jours = 30;
      saison = 'Été';
      break;
    case 7:
      nomMois = 'Juillet';
      jours = 31;
      saison = 'Été';
      break;
    case 8:
      nomMois = 'Août';
      jours = 31;
      saison = 'Été';
      break;
    case 9:
      nomMois = 'Septembre';
      jours = 30;
      saison = 'Automne';
      break;
    case 10:
      nomMois = 'Octobre';
      jours = 31;
      saison = 'Automne';
      break;
    case 11:
      nomMois = 'Novembre';
      jours = 30;
      saison = 'Automne';
      break;
    case 12:
      nomMois = 'Décembre';
      jours = 31;
      saison = 'Hiver';
      break;
    default:
      nomMois = 'Inconnu';
      jours = 0;
      saison = 'Inconnu';
  }

  if (mois >= 1 && mois <= 12) {
    print('');
    print('Mois: $nomMois');
    print('Jours: $jours');
    print('Saison: $saison');
  } else {
    print('');
    print('Mois invalide !');
  }
}
