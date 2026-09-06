#!/usr/bin/env bash

config="
[ids]
*

[main]
# Tap for Escape, hold for custom 'nav' layer
capslock = overload(nav, esc)

[nav]
h = left
j = down
k = up
l = right"

fileName="default.conf"
path="/etc/keyd/"

if yes Y | pacman -S keyd  ; then
  echo "----- adding new bindings $path"
  echo "$config" > $path$fileName
  echo "----- enabling new bindings $path$fileName"
  systemctl enable --now keyd
fi
