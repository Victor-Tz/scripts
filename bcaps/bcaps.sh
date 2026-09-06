#!/usr/bin/env bash

if pacman -S keyd  ; then
  echo "----- adding new bindings"
  cp "./default.conf" "/etc/keyd/default.conf"  
  echo "----- enabling new bindings"
  systemctl enable --now keyd
fi
