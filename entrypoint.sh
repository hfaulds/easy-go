#!/bin/bash

if [ -n "$1" ]; then
  cd $1
fi

go run . "${@:2}"
