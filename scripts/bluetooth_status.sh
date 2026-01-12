#!/usr/bin/env bash

# Récupère la liste des périphériques Bluetooth connectés
DEVICE=$(bluetoothctl info | grep "Connected: yes" -B 1 | grep "Name" | awk -F ": " '{print $2}')

if [ -n "$DEVICE" ]; then
    # Icône si connecté
    ICON=""   # peut être modifié selon ton font
    STATUS="connecté"
else
    ICON=""   # icône Bluetooth désactivé/non connecté
    STATUS="déconnecté"
    DEVICE=""
fi

echo "{\"text\":\"$ICON $DEVICE ($STATUS)\", \"tooltip\":\"$DEVICE\"}"

