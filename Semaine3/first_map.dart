void main() {
  // Créer un map de capitales
  Map<String, String> capitales = {
    'France': 'Paris',
    'Espagne': 'Madrid',
    'Italie': 'Rome',
    'Allemagne': 'Berlin',
  };
  
  print('=== CAPITALES EUROPÉENNES ===');
  print('Map complet: $capitales');
  print('');
  
  // Accéder aux valeurs
  print('Capitale de la France: ${capitales['France']}');
  print('Capitale de l\'Espagne: ${capitales['Espagne']}');
  
  // Nombre d'entrées
  print('');
  print('Nombre de pays: ${capitales.length}');
}