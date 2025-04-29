#!/bin/bash

# Lista de wallpapers
wallpapers=("~/Pictures/Wallpapers/japan.png")

# Seleciona aleatoriamente um wallpaper
wallpaper="${wallpapers[RANDOM % ${#wallpapers[@]}]}"

# Usa o Waypaper para trocar o wallpaper
waypaper -s "$wallpaper"

