
# TP Versioning Automatisé

Ce projet est un TP qui compare trois outils de versioning automatique :  
**standard-version**, **release-it**, et **semantic-release**.

## 🛠️ Pré-requis

- Node.js ≥ 18
- Git
- Un terminal (Bash, Git Bash, PowerShell...)

## 📦 Installation

```bash
npm install
```

## 🚀 Utilisation

Le script `release.sh` permet de lancer l'outil de versioning de ton choix.

### Modifier l'outil à utiliser

Dans le fichier `release.sh`, change la valeur de la variable `TOOL` :

```bash
TOOL="standard-version"       # ou "release-it" ou "semantic-release"
```

### Lancer le script

```bash
bash release.sh
```

---

## 📁 Description des fichiers

| Fichier         | Description                                               |
|----------------|-----------------------------------------------------------|
| `package.json` | Contient les dépendances et la configuration de versioning |
| `release.sh`   | Script bash qui permet de lancer l'outil choisi            |
| `README.md`    | Documentation complète du projet                           |

---

## 🔧 Configuration spécifique

### standard-version

Aucune configuration supplémentaire. Tout est automatique après `npm install`.

### release-it

Peut utiliser un fichier `.release-it.json` ou être configuré directement dans `package.json`.

### semantic-release

Nécessite un environnement CI avec les variables suivantes :

- `GH_TOKEN` : token GitHub
- `NPM_TOKEN` : token npm (si publication sur npm)

> Lors du test local, la commande `semantic-release --dry-run` permet de simuler l’exécution.

---

## ✅ Exemple de commits valides

Utilise le format Conventional Commits :

```bash
git commit -m "feat: ajout d'un nouveau bouton"
git commit -m "fix: correction d'un bug sur la connexion"
```

---

## 👨‍💻 Auteur

- Nom : *Gilchrist*
- Projet réalisé dans le cadre du TP de versioning
