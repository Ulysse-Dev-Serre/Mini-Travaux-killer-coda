import 'dart:io';

void main() {
  print('╔════════════════════════════════════╗');
  print('║ SYSTÈME DE NOTATION SCOLAIRE   ║');
  print('╚════════════════════════════════════╝');
  print('');

  // Partie 1: Informations étudiant
  print('--- INFORMATIONS ÉTUDIANT ---');
  print('Nom complet:');
  String? nom = stdin.readLineSync();
  nom = nom ?? 'Étudiant';

  print('Classe (ex: Terminale, Licence 1):');
  String? classe = stdin.readLineSync();
  classe = classe ?? '';

  print('');

  // Partie 2: Saisie des notes
  print('--- SAISIE DES NOTES (sur 20) ---');

  print('Note 1 (Mathématiques):');
  double note1 = double.parse(stdin.readLineSync() ?? '0');

  print('Note 2 (Français):');
  double note2 = double.parse(stdin.readLineSync() ?? '0');

  print('Note 3 (Anglais):');
  double note3 = double.parse(stdin.readLineSync() ?? '0');

  // Calculer moyenne
  double moyenne = (note1 + note2 + note3) / 3;

  print('');

  // Partie 3: Déterminer la mention
  String mention;
  String emoji;

  if (moyenne >= 16) {
    mention = 'Très bien';
    emoji = '';
  } else if (moyenne >= 14) {
    mention = 'Bien';
    emoji = '';
  } else if (moyenne >= 12) {
    mention = 'Assez bien';
    emoji = '';
  } else if (moyenne >= 10) {
    mention = 'Passable';
    emoji = '';
  } else {
    mention = 'Insuffisant';
    emoji = '';
  }

  print('--- RÉSULTATS ---');
  print('Moyenne: ${moyenne.toStringAsFixed(2)}/20');
  print('$emoji Mention: $mention');
  print('');

  // Partie 4: Vérifier admission
  bool moyenneOK = moyenne >= 10;
  bool aucuneNoteEliminatoire = note1 >= 5 && note2 >= 5 && note3 >= 5;

  bool estAdmis = moyenneOK && aucuneNoteEliminatoire;

  if (estAdmis) {
    print(' ADMIS ! Félicitations !');
  } else {
    print(' NON ADMIS');

    if (!moyenneOK) {
      print('Raison: Moyenne inférieure à 10/20');
    }
    if (!aucuneNoteEliminatoire) {
      print('Raison: Note éliminatoire (< 5/20)');
    }
  }
  print('');

   // Partie 5: Conseils selon la performance
  print('--- CONSEIL PERSONNALISÉ ---');

  switch (mention) {
    case 'Très bien':
      print('Excellent travail ! Continuez ainsi !');
      print('Vous pouvez viser les meilleures écoles.');
      break;
    case 'Bien':
      print('Très bon travail !');
      print('Quelques efforts supplémentaires pour le Très Bien.');
      break;
    case 'Assez bien':
      print('Bon travail !');
      print('Vous pouvez améliorer vos résultats avec plus de travail.');
      break;
    case 'Passable':
      print('C\'est juste suffisant.');
      print('Il faut travailler davantage pour progresser.');
      break;
    default:
      print('Résultats insuffisants.');
      print('Un travail sérieux est nécessaire.');
  }
  print('');

  // Partie 6: Analyse par matière
  print('--- ANALYSE PAR MATIÈRE ---');

  // Meilleure note
  double meilleure = note1;
  String matiereForte = 'Mathématiques';

  if (note2 > meilleure) {
    meilleure = note2;
    matiereForte = 'Français';
  }
  if (note3 > meilleure) {
    meilleure = note3;
    matiereForte = 'Anglais';
  }

  // Pire note
  double pire = note1;
  String matiereFaible = 'Mathématiques';

  if (note2 < pire) {
    pire = note2;
    matiereFaible = 'Français';
  }
  if (note3 < pire) {
    pire = note3;
    matiereFaible = 'Anglais';
  }

  print('Point fort: $matiereForte ($meilleure/20)');
  print('À améliorer: $matiereFaible ($pire/20)');
  print('');

   // Partie 7: Résumé complet
 print('╔════════════════════════════════════╗');
 print('║    BULLETIN DE NOTES      ║');
 print('╚════════════════════════════════════╝');
 print('');
 print('Étudiant: $nom');
 print('Classe: $classe');
 print('');
 print('Notes:');
 print(' Mathématiques: $note1/20');
 print(' Français:   $note2/20');
 print(' Anglais:    $note3/20');
 print('');
 print('Moyenne générale: ${moyenne.toStringAsFixed(2)}/20');
 print('Mention: $mention');
 print('Statut: ${estAdmis ? "ADMIS" : "NON ADMIS"}');
 print('');
 print('═══════════════════════════════════════');
 print('Merci d\'avoir utilisé notre système !');
}
