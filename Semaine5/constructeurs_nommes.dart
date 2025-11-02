class Point {
  double x;
  double y;

  // Constructeur par défaut
  Point(this.x, this.y);

  // Constructeur nommé
  Point.origine() : x = 0, y = 0;
  Point.unitaire() : x = 1, y = 1;
}

void main() {
  Point p1 = Point(5, 10);
  Point p2 = Point.origine();
  Point p3 = Point.unitaire();
}
