import 'dart:io';

void main() {
  // Liste de tâches (chaque tâche = Map)
  List<Map<String, dynamic>> taches = [];
  
  print('=== GESTIONNAIRE DE TÂCHES ===');
  
  while (true) {
    print('');
    print('--- MENU ---');
    print('1. Afficher toutes les tâches');
    print('2. Ajouter une tâche');
    print('3. Marquer comme complétée');
    print('4. Supprimer une tâche');
    print('5. Statistiques');
    print('6. Quitter');
    print('Choix:');
    
    String? choix = stdin.readLineSync();
    
    switch (choix) {
      case '1':
        afficherTaches(taches);
        break;
      case '2':
        ajouterTache(taches);
        break;
      case '3':
        completerTache(taches);
        break;
      case '4':
        supprimerTache(taches);
        break;
      case '5':
        afficherStatistiques(taches);
        break;
      case '6':
        print('Au revoir.');
        return;
      default:
        print('Choix invalide.');
    }
  }
}

void afficherTaches(List<Map<String, dynamic>> taches) {
  print('');
  print('--- LISTE DES TÂCHES ---');
  
  if (taches.isEmpty) {
    print('Aucune tâche.');
    return;
  }
  
  for (int i = 0; i < taches.length; i++) {
    var tache = taches[i];
    String statut = tache['complete'] ? '[X]' : '[ ]';
    String priorite = tache['priorite'];
    print('${i + 1}. $statut ${tache['titre']} (Priorité: $priorite)');
  }
}

void ajouterTache(List<Map<String, dynamic>> taches) {
  print('');
  print('Titre de la tâche:');
  String? titre = stdin.readLineSync();
  
  print('Priorité (1=Haute, 2=Moyenne, 3=Basse):');
  String? prioriteInput = stdin.readLineSync();
  int prioriteNum = int.parse(prioriteInput ?? '2');
  
  String priorite;
  switch (prioriteNum) {
    case 1:
      priorite = 'Haute';
      break;
    case 2:
      priorite = 'Moyenne';
      break;
    case 3:
      priorite = 'Basse';
      break;
    default:
      priorite = 'Moyenne';
  }
  
  Map<String, dynamic> nouvelleTache = {
    'titre': titre,
    'complete': false,
    'priorite': priorite,
  };
  
  taches.add(nouvelleTache);
  print('Tâche ajoutée.');
}

void completerTache(List<Map<String, dynamic>> taches) {
  afficherTaches(taches);
  
  if (taches.isEmpty) return;
  
  print('');
  print('Numéro de la tâche à compléter:');
  String? numInput = stdin.readLineSync();
  int index = int.parse(numInput ?? '0') - 1;
  
  if (index >= 0 && index < taches.length) {
    taches[index]['complete'] = true;
    print('Tâche marquée comme complétée.');
  } else {
    print('Numéro invalide.');
  }
}

void supprimerTache(List<Map<String, dynamic>> taches) {
  afficherTaches(taches);
  
  if (taches.isEmpty) return;
  
  print('');
  print('Numéro de la tâche à supprimer:');
  String? numInput = stdin.readLineSync();
  int index = int.parse(numInput ?? '0') - 1;
  
  if (index >= 0 && index < taches.length) {
    taches.removeAt(index);
    print('Tâche supprimée.');
  } else {
    print('Numéro invalide.');
  }
}

void afficherStatistiques(List<Map<String, dynamic>> taches) {
  print('');
  print('--- STATISTIQUES ---');
  
  int total = taches.length;
  int completes = taches.where((t) => t['complete']).length;
  int restantes = total - completes;
  
  print('Total: $total tâches');
  print('Complétées: $completes');
  print('Restantes: $restantes');
  
  if (total > 0) {
    double pourcentage = (completes / total) * 100;
    print('Progression: ${pourcentage.toStringAsFixed(1)}%');
  }
}