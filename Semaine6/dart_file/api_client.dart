class ApiClient {
  Map<int, Map<String, dynamic>> _cache = {};
  
  Future<Map<String, dynamic>> getUtilisateur(int id) async {
    // Vérifier cache
    if (_cache.containsKey(id)) {
      print('Depuis cache...');
      return _cache[id]!;
    }
    
    // Simuler appel API
    print('Appel API...');
    await Future.delayed(Duration(seconds: 2));
    
    Map<String, dynamic> data = {
      'id': id,
      'nom': 'User $id',
      'email': 'user$id@mail.com',
    };
    
    _cache[id] = data;
    return data;
  }
  
  Future<List<Map<String, dynamic>>> getUtilisateurs(List<int> ids) async {
    List<Map<String, dynamic>> utilisateurs = [];
    
    for (int id in ids) {
      var user = await getUtilisateur(id);
      utilisateurs.add(user);
    }
    
    return utilisateurs;
  }
}

void main() async {
  print('=== CLIENT API AVEC CACHE ===\n');
  
  ApiClient api = ApiClient();
  
  print('Premier appel:');
  var user1 = await api.getUtilisateur(1);
  print(user1);
  
  print('\nDeuxième appel (même ID):');
  var user2 = await api.getUtilisateur(1);
  print(user2);
  
  print('\nChargement de plusieurs utilisateurs:');
  var users = await api.getUtilisateurs([1, 2, 3]);
  for (var user in users) {
    print('- ${user['nom']} (${user['email']})');
  }
}
