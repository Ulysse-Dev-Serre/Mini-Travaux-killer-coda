void main() {
  int a = 10;
  int b = 5;

  print('=== OPÉRATEURS DE COMPARAISON ===');
  print('a = $a, b = $b');
  print('');

  // Égal
  print('a == b : ${a == b}'); // false

  // Différent
  print('a != b : ${a != b}'); // true

  // Plus grand
  print('a > b : ${a > b}'); // true

  // Plus petit
  print('a < b : ${a < b}'); // false

  // Plus grand ou égal
  print('a >= b : ${a >= b}'); // true
  print('a >= 10 : ${a >= 10}'); // true

  // Plus petit ou égal
  print('b <= 5 : ${b <= 5}'); // true
}
