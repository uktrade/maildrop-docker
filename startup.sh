#!/bin/bash

case "$1" in
  smtp)
    java "$@" -jar /maildrop/smtp/smtp.jar
    ;;
  web)
    /maildrop/web/bin/web "$@"
    ;;
  *)
    echo "Usage: $0 {web|smtp} [ARGS]"
    exit 1
esac
