// Fonction qui retourne la somme
int additionner(int a, int b) {
  return a + b;
}

// Fonction qui retourne le produit
int multiplier(int a, int b) {
  return a * b;
}

// Fonction qui retourne le double d'un nombre
int doubler(int nombre) {
  return nombre * 2;
}

// Fonction qui retourne l'aire d'un rectangle
int calculerAire(int longueur, int largeur) {
  int aire = longueur * largeur;
  return aire;
}

void main() {
  // Utiliser les fonctions
  print('Addition: 5 + 3 = ${additionner(5, 3)}');
  print('Multiplication: 5 × 3 = ${multiplier(5, 3)}');
  print('Double de 7: ${doubler(7)}');
  
  // Stocker le résultat dans une variable
  int resultat = calculerAire(10, 5);
  print('Aire d\'un rectangle 10×5: $resultat cm²');
  
  // Utiliser un résultat dans un calcul
  int somme = additionner(10, 20);
  int doubleSomme = doubler(somme);
  print('10 + 20 = $somme, doublé = $doubleSomme');
}
