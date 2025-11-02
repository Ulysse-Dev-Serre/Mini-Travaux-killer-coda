class Animal {
  String nom;

  Animal(this.nom);

  void faireDuBruit() {
    print('Son générique');
  }
}

class Chien extends Animal {
  Chien(String nom) : super(nom);

  @override
  void faireDuBruit() {
    print('$nom fait: Woof!');
  }
}

void main() {
  Chien rex = Chien('Rex');
  rex.faireDuBruit(); // Rex fait: Woof!
}
