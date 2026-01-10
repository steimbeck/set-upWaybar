#!/bin/bash

# Compte le nombre d'entrées dans l'historique du presse-papier
count=$(cliphist list | wc -l)

# Récupère le dernier élément copié (limité à 30 caractères)
latest=$(cliphist list | head -n1 | cut -c1-30)

# Si aucun élément, affiche "Empty"
if [ -z "$latest" ]; then
    latest="Empty"
    count=0
fi

# Retourne au format JSON pour Waybar
echo "{\"text\":\"$count\", \"tooltip\":\"$latest\", \"class\":\"clipboard\"}"
