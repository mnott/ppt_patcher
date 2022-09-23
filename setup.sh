#!/bin/bash

if [[ ! -d python ]]; then
	echo python subdirectory or symlink not found.
	exit 1
fi

source python/bin/activate

pip3 install rich typer doc2md
pip3 install python-pptx

if [[ -d prereqs ]]; then
	prereqs/patch.sh
fi
