#!/bin/bash

if [[ $# -ne 1 ]] || [[ ! -d $1 ]]; then
	echo "Error"
	exit 1
fi

TARGET=$1

touch "$TARGET/ciao"
chmod 442 "$TARGET/ciao"
touch -t 202601010001 "$TARGET/ciao"

mkdir "$TARGET/mamma"
chmod 777 "$TARGET/mamma"
touch -t 202601020001 "$TARGET/mamma"

touch "$TARGET/guarda"
chmod 400 "$TARGET/guarda"
touch -t 202601030001 "$TARGET/guarda"

touch "$TARGET/come"
chmod 642 "$TARGET/come"
touch -t 202601040001 "$TARGET/come"

mkdir "$TARGET/mi"
chmod 452 "$TARGET/mi"
touch -t 202601050001 "$TARGET/mi"

touch "$TARGET/diverto"
chmod 421 "$TARGET/diverto"
touch -t 202601060001 "$TARGET/diverto"
