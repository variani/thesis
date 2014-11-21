#!/bin/bash
#
# Ref: 
#   @ http://www.statistik.lmu.de/~leisch/Sweave/FAQ.html
#   @ http://archive.ics.uci.edu/ml/datasets/Iris


name="thesis-talk"

pdfviewer="evince" # "evince -s", 

rdir=R
pdfdir=figure
rinc=$rdir/include.R

# No parameter #1
if [ -z $1 ]; then
  R CMD Sweave $name.Rnw
  pdflatex $name
  $pdfviewer $name.pdf
# Run R+latex
elif [ $1 = "-t" ]; then
  R CMD Sweave $name.Rnw
  pdflatex $name
# Run just R
elif [ $1 = "-r" ]; then
  R CMD Sweave $name.Rnw
# Run just R
elif [ $1 = "-f" ]; then
  rfiles=$(ls $rdir/*.R | egrep "scatterplot|hist") 
  for rfile in $rfiles ; do
    basename=${rfile%.*}
    name=${basename##*/}
    pdffile="$pdfdir/$name.pdf"

    echo " * $name"
    
    if [ -e $pdffile ] ; then
      echo "exists: $pdffile"
    else
      Rscript -e "pdf(\"$pdffile\"); source(\"$rinc\"); source(\"$rfile\", echo=TRUE); dev.off()"
    fi
    
  done
fi

