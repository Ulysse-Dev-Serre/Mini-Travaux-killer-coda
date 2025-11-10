class Rectangle {
  double longueur;
  double largeur;

  Rectangle(this.longueur, this.largeur);

  // Getter
  double get aire => longueur * largeur;

  // Setter
  set dimensions(List<double> dims) {
    longueur = dims[0];
    largeur = dims[1];
  }
}
