#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied."
    exit 1
fi

jpegoptim --strip-all "$1"/*.jpg
mogrify -resize 1200x "$1"/*.jpg
