#!/bin/bash

set -e

BRANCH=$(git branch --show-current)
VERSION_TYPE=$1 # major / minor / patch

if [[ -z "$VERSION_TYPE" ]]; then
  VERSION_TYPE="patch"
fi

echo "🔍 Lancement des tests..."
npm test || { echo "❌ Échec des tests. Abandon de la release."; exit 1; }

echo "🚀 Génération de la release $VERSION_TYPE avec standard-version..."
npx standard-version --release-as $VERSION_TYPE

echo "📤 Push des commits et du tag..."
git push origin $BRANCH
git push origin --tags

# Récupérer le tag généré automatiquement
TAG=$(git describe --tags)

echo "🏷️ Création de la release GitHub $TAG..."
gh release create "$TAG" --title "$TAG" --notes-file CHANGELOG.md

echo "✅ Release $TAG publiée avec succès !"
