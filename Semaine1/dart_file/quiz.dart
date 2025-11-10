import 'dart:io';

void main() {
  print('=== QUIZ DART ===');
  print('Répondez aux questions suivantes:');
  print('');
  
  int score = 0;
  
  // Question 1
  print('Question 1: Quelle est la capitale de la France?');
  String? reponse1 = stdin.readLineSync();
  if (reponse1?.toLowerCase() == 'paris') {
    print('Correct!');
    score++;
  } else {
    print('Faux. La bonne réponse est Paris.');
  }
  print('');
  
  // Question 2
  print('Question 2: Combien font 7 × 8?');
  String? reponse2 = stdin.readLineSync();
  if (reponse2 == '56') {
    print('Correct!');
    score++;
  } else {
    print('Faux. La bonne réponse est 56.');
  }
  print('');
  
  // Question 3
  print('Question 3: Quel est le langage de ce cours? (indice: commence par D)');
  String? reponse3 = stdin.readLineSync();
  if (reponse3?.toLowerCase() == 'dart') {
    print('Correct!');
    score++;
  } else {
    print('Faux. La bonne réponse est Dart!');
  }
  print('');
  
  // Score final
  print('=== RÉSULTAT FINAL ===');
  print('Vous avez obtenu $score / 3');
  
  if (score == 3) {
    print('Parfait! Vous êtes un champion!');
  } else if (score >= 2) {
    print('Bien joué!');
  } else {
    print('Continuez à apprendre!');
  }
}
