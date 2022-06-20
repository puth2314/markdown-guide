#! /usr/bin/bash

[ -z $1 ] && echo -e "\nFAILED: EMPTY ARG." && exit 0

if [ $1 = "html" ]; then
    OFILE="markdown-guide.html" # -t slidy; for html slides
    OFLAGS="-s --mathjax"
elif [ $1 = "pdf" ]; then
    OFILE="markdown-guide.pdf"
    OFLAGS="--pdf-engine=pdflatex --resource-path=.;src" # --resource-path=.;src
elif [ $1 = "slide" ]; then
    OFILE="markdown-slide.pdf"
    OFLAGS="-t beamer -V theme:Luebeck" 
else
    echo -e "\nFAILED: INVALID ARG."
    exit 0
fi

IFILE="markdown-guide.md"

echo $(pandoc src/${IFILE} -o build/${OFILE} ${OFLAGS} -C --bibliography=src/references.bib --csl=src/ieee-with-url.csl)
echo "SUCCESS: Converted ${IFILE} to ${OFILE}."
