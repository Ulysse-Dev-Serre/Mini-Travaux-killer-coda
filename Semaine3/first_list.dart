void main() {
  // Créer une liste de villes
  List<String> villes = ['Paris', 'Lyon', 'Marseille', 'Toulouse'];
  
  print('=== MA LISTE DE VILLES ===');
  print('Liste complète: $villes');
  print('');
  
  // Accéder aux éléments
  print('Première ville: ${villes[0]}');
  print('Deuxième ville: ${villes[1]}');
  print('Dernière ville: ${villes[3]}');
  
  // Propriétés
  print('');
  print('Nombre de villes: ${villes.length}');
  print('Liste vide? ${villes.isEmpty}');
  print('Liste non-vide? ${villes.isNotEmpty}');
}