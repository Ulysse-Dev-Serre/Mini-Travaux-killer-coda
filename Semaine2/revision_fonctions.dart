// Fonction qui additionne deux nombres
int additionner(int a, int b) {
  return a + b;
}

// Fonction qui salue
void saluer(String nom) {
  print('Bonjour $nom!');
}

void main() {
  print('=== RÉVISION FONCTIONS ===');

  // Utiliser les fonctions
  saluer('Marie');

  int resultat = additionner(10, 5);
  print('10 + 5 = $resultat');
}
