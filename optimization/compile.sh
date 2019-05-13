#!/bin/bash

set -e

if [ -f "notes.idx" ]; then
  makeindex notes
fi
xelatex -halt-on-error -interaction errorstopmode theorems_and_definitions
xelatex -halt-on-error -interaction errorstopmode notes
exit "$?"
