#!/bin/bash

case "$1" in
  smtp)
    java "${@:2}" -jar /maildrop/smtp/smtp.jar
    ;;
  web)
    /maildrop/web/bin/web "${@:2}"
    ;;
  *)
    echo "Usage: $0 {web|smtp} [ARGS]"
    exit 1
esac
