void main() async {
  print('Début');
  
  // Attendre 2 secondes
  await Future.delayed(Duration(seconds: 2));
  
  print('Fin (après 2 secondes)');
}
