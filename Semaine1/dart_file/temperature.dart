// Convertir Celsius en Fahrenheit
// Formule: F = C × 9/5 + 32
double celsiusVersFahrenheit(double celsius) {
  double fahrenheit = celsius * 9 / 5 + 32;
  return fahrenheit;
}

// Convertir Fahrenheit en Celsius
// Formule: C = (F - 32) × 5/9
double fahrenheitVersCelsius(double fahrenheit) {
  double celsius = (fahrenheit - 32) * 5 / 9;
  return celsius;
}

// Afficher une température avec ses deux valeurs
void afficherTemperature(double celsius) {
  double fahrenheit = celsiusVersFahrenheit(celsius);
  print('$celsius°C = $fahrenheit°F');
}

void main() {
  // Tester les conversions
  print('=== CONVERSIONS DE TEMPÉRATURE ===');
  print('');
  
  afficherTemperature(0);   // Point de congélation de l'eau
  afficherTemperature(100);  // Point d'ébullition de l'eau
  afficherTemperature(37);  // Température corporelle normale
  afficherTemperature(-40);  // -40°C = -40°F (fait rigolo!)
  
  print('');
  print('=== CONVERSION INVERSE ===');
  double tempC = fahrenheitVersCelsius(98.6);
  print('98.6°F = $tempC°C (température corporelle)');
}
