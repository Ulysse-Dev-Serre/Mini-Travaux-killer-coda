Future<String> chargerDonnees() async {
  print('Chargement...');
  await Future.delayed(Duration(seconds: 2));
  return 'Données chargées';
}

void main() async {
  String resultat = await chargerDonnees();
  print(resultat);
}
