#!/bin/bash

COUNT=16
if [[ "$1" != "" ]]; then
  COUNT=$1
fi

cat /dev/urandom| tr -dc 'a-zA-Z0-9-_!@#$%^&*()_+{}|:<>?=' | fold -w ${COUNT} | head -n 1

