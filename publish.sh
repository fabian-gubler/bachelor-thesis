#!/usr/bin/bash

FILE="thesis.pdf" 
DIR="/data/thesis"

# Compile PDF
cd $DIR/latex
make pdf
rm $DIR/$FILE
mv $FILE $DIR

# Move to main directory and push to git
cd $DIR
git commit $FILE -m "pdf compiled"
git push origin main
