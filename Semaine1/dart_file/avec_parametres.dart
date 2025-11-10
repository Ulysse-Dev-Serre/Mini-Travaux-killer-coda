// Fonction avec UN paramètre
void presenterPersonne(String nom) {
  print('Je m\'appelle $nom.');
}

// Fonction avec PLUSIEURS paramètres
void presenterComplet(String nom, int age, String ville) {
  print('Je m\'appelle $nom.');
  print('J\'ai $age ans.');
  print('J\'habite à $ville.');
  print('---');
}

void main() {
  // Appeler avec un paramètre
  presenterPersonne('Julie');
  print('');
  
  // Appeler avec plusieurs paramètres
  presenterComplet('Marc', 30, 'Paris');
  presenterComplet('Sophie', 25, 'Lyon');
  presenterComplet('Thomas', 35, 'Marseille');
}
