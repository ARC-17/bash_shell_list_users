#!/usr/bin/env bash

USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
  $(basename $0) - [OPÇÕES]

      -h - Menu de ajuda
      -s - Ordernar a saída
"

case "$1" in
  -h) echo "$MENSAGEM_USO" && exit 0    ;;
  -s) echo "$USUARIOS" | sort && exit 0 ;;
   *) echo "$USUARIOS"                  ;;
esac
