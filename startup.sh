#!/bin/bash

case "$1" in
  smtp)
    cd /maildrop/smtp
    java "${@:2}" -jar smtp.jar
    ;;
  web)
    cd /maildrop/web
    bin/web "${@:2}"
    ;;
  *)
    echo "Usage: $0 {web|smtp} [ARGS]"
    exit 1
esac
