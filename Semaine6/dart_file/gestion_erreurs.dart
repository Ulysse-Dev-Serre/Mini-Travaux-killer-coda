Future<String> chargerDonnees() async {
  print('Tentative de chargement...');
  await Future.delayed(Duration(seconds: 1));
  throw Exception('Erreur réseau');
}

Future<String> chargerAvecTimeout() async {
  print('Chargement avec timeout (1 seconde)...');
  return Future.delayed(Duration(seconds: 2), () => 'Données')
    .timeout(Duration(seconds: 1));
}

void main() async {
  // Test 1: Try/Catch
  print('=== TEST 1: Gestion d\'erreur ===');
  try {
    String data = await chargerDonnees();
    print(data);
  } catch (e) {
    print('Erreur capturée: $e');
  }
  
  print('\n=== TEST 2: Timeout ===');
  try {
    String data = await chargerAvecTimeout();
    print(data);
  } catch (e) {
    print('Timeout dépassé: $e');
  }
}
