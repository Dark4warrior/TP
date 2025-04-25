#!/bin/bash

# Choisir l'outil ici : "standard-version", "release-it" ou "semantic-release"
TOOL="semantic-release"

echo "Lancement de la release avec: $TOOL"

if [ "$TOOL" == "standard-version" ]; then
  npx standard-version

elif [ "$TOOL" == "release-it" ]; then
  npx release-it

elif [ "$TOOL" == "semantic-release" ]; then
  npx semantic-release --dry-run

else
  echo "Outil inconnu: $TOOL"
  exit 1
fi
