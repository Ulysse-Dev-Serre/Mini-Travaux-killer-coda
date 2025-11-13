# Semaine 2 - If/Else, Opérateurs, Switch
```bash
cd semaine2
```
## Étape 1 : If/Else - Prendre des Décisions
### Exercice 1 : Affiche un message si la température > 30 - If simple
![Exercice 1 : Résultat](screenshots/premier_if.png)
```bash
dart premier_if.dart
```
### Exercice 2 : Vérifie l'âge et indique majeur ou mineur - If/Else
![Exercice 2 : Résultat](screenshots/majeur_mineur.png)
```bash
dart majeur_mineur.dart
```
### Exercice 3 : Calculateur de Mention. Donne une mention selon la note sur 20 - If/Else If/Else
![Exercice 3 : Résultat](screenshots/mentions.png)
```bash
dart mentions.dart
```
### Exercice 4 : Système de Connexion. Vérifie identifiant et mot de passe - Conditions imbriquées
![Exercice 4 : Résultat](screenshots/connexion.png)
```bash
dart connexion.dart
```
### Exercice 5 : Prix avec Réduction. Applique une réduction si le prix > 100€ - Opérateur ternaire
![Exercice 5 : Résultat](screenshots/reduction.png)
```bash
dart reduction.dart
```
### Exercice Bonus 6: Calculateur IMC Amélioré. Calcule l'IMC et affiche l'interprétation.
![Exercice Bonus 6 : Résultat](screenshots/exercice_bonus_calculateur_imc.png)
```bash
dart exercice_bonus_calculateur_imc.dart
```
## Étape 2 :  Opérateurs de Comparaison et Logiques
### Exercice 1 : Tester Tous les. Montre les opérateurs de comparaison de base.
![Exercice 1 : Résultat](screenshots/operateurs_comparaison.png)
```bash
dart operateurs_comparaison.dart
```
### Exercice 2 :  Opérateur ET. Exige deux conditions vraies pour autoriser l'accès.
![Exercice 2 : Résultat](screenshots/operateur_et.png)
```bash
dart operateur_et.dart
```
### Exercice 3 :  Opérateur OU. Autorise si au moins une condition est vraie.
![Exercice 3 : Résultat](screenshots/operateur_ou.png)
```bash
dart operateur_ou.dart
```
### Exercice 4 :  Opérateur NON. Utilise la négation pour contrôler l'accès.
![Exercice 4 : Résultat](screenshots/operateur_non.png)
```bash
dart operateur_non.dart
```
### Exercice 5 : Conditions Complexes. Combine conditions pour décider la livraison.
![Exercice 5 : Résultat](screenshots/conditions_complexes.png)
```bash
dart conditions_complexes.dart
```
### Exercice 6 : Recherche de Produit. Cherche un produit dans une liste.
![Exercice 6 : Résultat](screenshots/recherche.png)
```bash
dart recherche.dart
```
### Exercice Bonus 7 : Validateur de Mot de Passe. Valide un mot de passe selon des règles simples.
![Exercice Bonus 7 : Résultat](screenshots/exercice_bonus_validateur.png)
```bash
dart exercice_bonus_validateur.dart
```
## Étape 3 : Switch - Choix Multiples
### Exercice 1 : Affiche un menu et exécute le choix - Switch Simple
![Exercice 1 : Résultat](screenshots/premier_switch.png)
```bash
dart premier_switch.dart
```
### Exercice 2 : Convertisseur de Mois. Affiche nom, jours et saison selon le numéro
![Exercice 2 : Résultat](screenshots/mois.png)
```bash
dart mois.dart
```
### Exercice 3 : Calculatrice. Effectue +, -, ×, / selon l'opération - Cases Multiples
![Exercice 3 : Résultat](screenshots/calculatrice_switch.png)
```bash
dart calculatrice_switch.dart
```

## Étape 4 : Défi - Système de Notes Interactif
### Exercice Complet : Saisie de notes, calcul de la moyenne et génération d'un bulletin.
Utilise :
- Variables : nom, notes, moyenne.
- Fonctions : main, parse (stdin).
- If / else if / else : mentions.
- Opérateurs : >=, &&, !.
- Switch : conseils.
- Opérateur ternaire : estAdmis ?.
- Interpolation de chaînes : $moyenne.

TOUS les concepts de la Semaine 2.

![Exercice Complet : Résultat](screenshots/systeme_notes.png)

```bash
dart systeme_notes.dart
```

## Exercices Supplémentaires 
### Niveau 1 : Débutant
1. Système de Réduction
   ![Système de Réduction : Résultat](screenshots/systeme_reduction_niveau1.png)
   ```bash
   dart systeme_reduction_niveau1.dart
   ```
2. Vérificateur de Mot de Passe
   ![Vérificateur de Mot de Passe : Résultat](screenshots/verificateur_mot_de_passe_niveau1.png)
   ```bash
   dart verificateur_mot_de_passe_niveau1.dart
   ```
3. Convertisseur de Notes
   ![Convertisseur de Notes : Résultat](screenshots/convertisseur_notes_niveau1.png)
   ```bash
   dart convertisseur_notes_niveau1.dart
   ```
### Niveau 2 : Intermédiaire
1. Calculateur d'Impôts
   ![Calculateur d'Impôts : Résultat](screenshots/calculateur_impots_federal_niveau2.png)
   ```bash
   dart calculateur_impots_federal_niveau2.dart
   ```
2. Système de Réservation
   ![Système de Réservation : Résultat](screenshots/systeme_reservation_niveau2.png)
   ```bash
   dart systeme_reservation_niveau2.dart
   ```
3. Jeu Pierre-Papier-Ciseaux
   ![Jeu Pierre-Papier-Ciseaux : Résultat](screenshots/pierre_papier_ciseaux_niveau2.png)
    ```bash
    dart pierre_papier_ciseaux_niveau2.dart
    ```
### Niveau 3 : Avancé
1. Gestionnaire de Panier E-Commerce
   ![Gestionnaire de Panier E-Commerce : Résultat](screenshots/gestionnaire_panier_niveau3.png)
   ```bash
   dart gestionnaire_panier_niveau3.dart
   ```
2. Analyseur de Texte 
   ![Analyseur de Texte : Résultat](screenshots/analyseur_texte_niveau3.png)
   ```bash
   dart analyseur_texte_niveau3.dart
   ```
3. Mini-RPG
   ![Mini-RPG : Résultat](screenshots/mini_rpg_niveau3.png)
   ```bash
   dart mini_rpg_niveau3.dart
   ```


# Récapitulatif Complet
## If/Else
```bash
if (condition) {
 // Si vrai
} else if (autreCondition) {
 // Si autre vrai
} else {
 // Si toutes fausses
}
```
## Opérateurs de Comparaison
```bash
==  // Égal
!=  // Différent
>   // Plus grand
<   // Plus petit
>=  // Plus grand ou égal
<=  // Plus petit ou égal
```
## Opérateurs Logiques
```bash
&&  // ET (les deux vrais)
||  // OU (au moins un vrai)
!   // NON (inverse)
```
## Switch
```bash
switch (variable) {
 case valeur1:
  // Code
  break;
 case valeur2:
  // Code
  break;
 default:
  // Par défaut
}
```
