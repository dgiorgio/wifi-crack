#!/bin/bash

PWD="$(pwd)"
CONFIG_DIR="$HOME/.wifi-crack"
CONFIG_FILE="$CONFIG_DIR/config.conf"
source "$CONFIG_FILE"

source "$CONFIG_INTERFACE"

source "$CURRENT_ATTACK_FILE"
source "$CONFIG_ATTACK"

# Salvar em arquivo
echo "Arquivo será salvo em $AIRCRACK_FILE_DIR/$ESSID-$DATA"
airodump-ng --channel "$CHANNEL" --bssid "$BSSID" --write "$AIRCRACK_FILE_DIR/$ESSID-$DATA" "$INTERFACE" && \
echo "Arquivo salvo com sucesso em $AIRCRACK_FILE_DIR/$ESSID-$DATA"
