void main() {
  // List avec doublons
  List<String> villesAvecDoublons = [
    'Paris', 'Lyon', 'Paris', 'Marseille', 'Lyon', 'Nice'
  ];
  
  print('Liste originale: $villesAvecDoublons');
  print('Nombre: ${villesAvecDoublons.length}');
  
  // Convertir en Set (élimine doublons)
  Set<String> villesUniques = villesAvecDoublons.toSet();
  
  print('');
  print('Set (sans doublons): $villesUniques');
  print('Nombre: ${villesUniques.length}');
  
  // Reconvertir en List si nécessaire
  List<String> listeSansDoublons = villesUniques.toList();
  print('');
  print('Liste nettoyée: $listeSansDoublons');
}