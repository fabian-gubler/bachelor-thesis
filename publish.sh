#!/usr/bin/bash

FILENAME="thesis.pdf" 

# Compile pdf
cd /data/thesis/latex
make pdf
rm /data/thesis/$FILENAME
mv $FILENAME /data/thesis/

# Move to main directory and push to git
cd /data/thesis
git commit $FILENAME -m "pdf compiled"
git push origin main
