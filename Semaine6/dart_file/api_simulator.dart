Future<Map<String, dynamic>> fetchUtilisateur(int id) async {
  print('Chargement utilisateur $id...');
  await Future.delayed(Duration(seconds: 1));
  
  return {
    'id': id,
    'nom': 'Utilisateur $id',
    'email': 'user$id@example.com',
  };
}

void main() async {
  print('=== SIMULATION API ===\n');
  
  try {
    Map<String, dynamic> user = await fetchUtilisateur(1);
    print('Données reçues:');
    print('Nom: ${user['nom']}');
    print('Email: ${user['email']}');
  } catch (e) {
    print('Erreur: $e');
  }
}
