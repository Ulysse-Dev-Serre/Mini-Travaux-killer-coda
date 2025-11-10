// Définir une classe
class Personne {
  String nom;
  int age;

  Personne(this.nom, this.age);

  void sePresenter() {
    print('Je m\'appelle $nom, j\'ai $age ans.');
  }
}

void main() {
  // Créer un objet
  Personne marie = Personne('Marie', 25);
  marie.sePresenter();

  Personne pierre = Personne('Pierre', 30);
  pierre.sePresenter();
}
