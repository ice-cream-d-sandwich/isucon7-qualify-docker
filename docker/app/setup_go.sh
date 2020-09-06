#!/bin/bash

cd ~/isubata/webapp/go

if [ $# -ne 1 ]; then
  echo "Invalid number of arguments" 1>&2
  exit 1
fi

make vet
make TARGET=$1

export ISUBATA_DB_HOST=app03
export ISUBATA_DB_USER=isucon
export ISUBATA_DB_PASSWORD=isucon

./isubata/isubata_$1
