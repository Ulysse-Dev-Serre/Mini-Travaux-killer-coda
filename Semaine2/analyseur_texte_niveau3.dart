// Compter mots, phrases
// Détecter langue
// Statistiques complètes

// Solution par AI

import 'dart:io';

void main() {
  print('Entrez votre texte:');
  String text = stdin.readLineSync() ?? '';

  if (text.isEmpty) {
    print('Texte vide!');
    return;
  }

  int mots = text
      .split(RegExp(r'\s+'))
      .where((w) => w.replaceAll(RegExp(r'[^\w]'), '').isNotEmpty)
      .length;
  int phrases = text
      .split(RegExp(r'[.!?]+'))
      .where((s) => s.trim().isNotEmpty)
      .length;
  int caracteresAvecEspaces = text.length;
  int caracteresSansEspaces = text.replaceAll(RegExp(r'\s'), '').length;
  String langue = detecterLangue(text);

  print('\nSTATISTIQUES:');
  print('Mots: $mots');
  print('Phrases: $phrases');
  print('Caractères: $caracteresAvecEspaces (avec espaces)');
  print('Caractères: $caracteresSansEspaces (sans espaces)');
  print('Langue: $langue');
}

String detecterLangue(String text) {
  final motsFrancais = {
    'le',
    'la',
    'de',
    'et',
    'à',
    'les',
    'des',
    'en',
    'un',
    'une',
    'est',
    'dans',
    'bonjour',
    'merci',
    'vous',
    'nous',
    'ils',
    'elles',
    'son',
    'sa',
    'ses',
    'cest',
    'ma',
    'mon',
    'ton',
    'ta',
    'notre',
    'votre',
    'leur',
    'ces',
    'cette',
    'pour',
    'que',
  };

  final motsAnglais = {
    'the',
    'be',
    'to',
    'of',
    'and',
    'a',
    'in',
    'that',
    'have',
    'i',
    'is',
    'for',
    'hello',
    'thank',
    'you',
    'we',
    'they',
    'his',
    'her',
    'its',
    'my',
    'your',
    'our',
    'their',
    'these',
    'this',
    'for',
    'that',
    'who',
    'what',
    'when',
    'where',
    'how',
  };

  String textLower = text.toLowerCase();
  List<String> mots = textLower.split(RegExp(r'\s+'));
  int scoreFrancais = 0;
  int scoreAnglais = 0;

  if (textLower.contains("'") ||
      textLower.contains('à') ||
      textLower.contains('è') ||
      textLower.contains('é') ||
      textLower.contains('ê') ||
      textLower.contains('ç')) {
    scoreFrancais += 3;
  }

  for (String mot in mots) {
    String motPropre = mot.replaceAll(RegExp(r'[^\w]'), '');
    if (motPropre.length >= 2) {
      if (motsFrancais.contains(motPropre)) scoreFrancais++;
      if (motsAnglais.contains(motPropre)) scoreAnglais++;
    }
  }

  if (textLower.contains("c'est") ||
      textLower.contains("qu'est") ||
      textLower.contains("d'")) {
    scoreFrancais += 2;
  }

  if (scoreFrancais > scoreAnglais) return 'Français';
  if (scoreAnglais > scoreFrancais) return 'English';

  if (textLower.contains('à') ||
      textLower.contains('è') ||
      textLower.contains('é') ||
      textLower.contains('ç')) {
    return 'Français';
  }

  return 'Inconnue';
}
