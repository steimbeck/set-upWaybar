#!/bin/bash

# Menu de gestion d'énergie pour Waybar
# Options disponibles

option=$(echo -e "󰐥 Éteindre\n Redémarrer\n󰒲 Suspendre\n󰤄 Hiberner\n Verrouiller\n󰍃 Déconnecter" | wofi --dmenu --prompt "Action:" --width 250 --height 300)

case $option in
    "󰐥 Éteindre")
        systemctl poweroff
        ;;
    " Redémarrer")
        systemctl reboot
        ;;
    "󰒲 Suspendre")
        systemctl suspend
        ;;
    "󰤄 Hiberner")
        systemctl hibernate
        ;;
    " Verrouiller")
        hyprlock
        # Ou utilisez: swaylock
        # Ou utilisez: gtklock
        ;;
    "󰍃 Déconnecter")
        hyprctl dispatch exit
        ;;
esac
