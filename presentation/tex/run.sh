#!/bin/bash
#
# Ref: 
#   @ http://www.statistik.lmu.de/~leisch/Sweave/FAQ.html
#   @ http://archive.ics.uci.edu/ml/datasets/Iris


name=thesis

# No parameter #1
if [ -z $1 ]; then
  pdflatex $name
  evince $name.pdf
# Run R+latex
elif [ $1 = "-b" ]; then
  pdflatex $name
  bibtex $name
  pdflatex $name
  pdflatex $name
  evince $name.pdf
# Run R+latex
elif [ $1 = "-t" ]; then
  pdflatex $name
# clean
elif [ $1 = "-c" ]; then
  rm -rf *.aux *.log *.nav *.out *.toc *.snm *.vrb
  rm -rf *.bbl *.blg
  rm -rf *.pdf
fi

