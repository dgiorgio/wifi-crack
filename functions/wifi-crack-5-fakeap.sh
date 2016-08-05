#!/bin/bash

PWD="$(pwd)"
CONFIG_DIR="$HOME/.wifi-crack"
CONFIG_FILE="$CONFIG_DIR/config"
source "$CONFIG_FILE"

source "$CONFIG_INTERFACE"

source "$CURRENT_ATTACK_FILE"
source "$CONFIG_ATTACK"

#start fake ap
airbase-ng -e "$ALVO" -c "$CHANNEL" "$INTERFACE"
#ex: airbase-ng -e fake-ap -c 6 mon0