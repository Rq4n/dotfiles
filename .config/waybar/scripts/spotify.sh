#!/bin/bash

# Verifica se o player está ativo e qual o status
player_status=$(playerctl --player=spotify status 2>/dev/null)

# Verifica se o player está tocando (Playing) ou pausado (Paused)
if [ "$player_status" = "Playing" ] || [ "$player_status" = "Paused" ]; then
    # Captura o artista e título da música tocando no Spotify
    artist=$(playerctl --player=spotify metadata artist)
    title=$(playerctl --player=spotify metadata title)
    
    # Mostra a música atual, formatando a saída
    echo "$artist - $title"
else
    # Se não houver música tocando, exibe nada
    echo ""
fi

