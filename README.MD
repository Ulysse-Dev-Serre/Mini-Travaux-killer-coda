https://killercoda.com/inskillflow-dart

##inSTALATION DART:

# Installation Dart sur Windows
soit on install comme ca : Alternative : install sur https://dart.dev/get-dart/archive et Ajouter au PATH manuellement

ou soit avec choco  
**Chocolatey** permet d'installer des applications comme sur Linux, avec une ligne de commande.  
sans avoir a télécharger des fichiers .exe 
⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️
---

## Étape 1 : Installer Chocolatey

 1. Ouvrir PowerShell en admin


2. Copier-coller cette commande -- Ça télécharge et installe Chocolatey.
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

3. Vérifier que ça marche
Taper :
```powershell
choco --version
```

**Si ça marche :**  
Vous verrez un numéro (ex: 2.5.1)

**Si ça marche pas :**  
Fermer PowerShell et rouvrir.

---

## Étape 2 : Installer Dart 

### Dans PowerShell (toujours en admin)
Taper :
```powershell
choco install dart-sdk -y
```

**Ça fait quoi ?**  
Ça installe Dart automatiquement.


---

## Étape 3 : Vérifier Dart

### Fermer et rouvrir PowerShell
Important ! Sinon Windows ne trouve pas Dart.

### Taper :
```powershell
dart --version
```

**Si ça marche :**  
Vous verrez : Dart SDK version: 3.x.x


---

## Étape 4 : Utiliser Dart dans Git Bash + VSCode

### Ouvrir VSCode
- Ouvrir un nouveau terminal
- Choisir Git Bash
- Taper : `dart --version`



### Sauvegarder (Ctrl+S)

### Dans Git Bash, taper :
```bash
dart test.dart
```

**Résultat :**  
Bonjour Dart!

---

## Commandes utiles Chocolatey

| Commande | Ce que ça fait |
|----------|---------------|
| `choco install git` | Installe Git |
| `choco install vscode` | Installe VSCode |
| `choco install nodejs` | Installe Node.js |
| `choco list --local` | Voir ce qui est installé |
| `choco upgrade all` | Met tout à jour |

---

## Si problème

### "choco" pas reconnu
- Fermer PowerShell
- Rouvrir en admin
- Réessayer


### Toujours pas ?
Dans Git Bash, taper :
```bash
export PATH="$PATH:/c/tools/dart-sdk/bin"
```

---

Alternative : install sur https://dart.dev/get-dart/archive et Ajouter au PATH manuellement