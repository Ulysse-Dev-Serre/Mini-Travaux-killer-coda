void main() {
  // Informations d'un rectangle
  int longueur = 10;
  int largeur = 5;
  
  // Calculer l'aire et le périmètre
  int aire = longueur * largeur;
  int perimetre = 2 * (longueur + largeur);
  
  // Afficher les résultats
  print('Rectangle:');
  print('  Longueur: $longueur cm');
  print('  Largeur: $largeur cm');
  print('  Aire: $aire cm²');
  print('  Périmètre: $perimetre cm');
}
