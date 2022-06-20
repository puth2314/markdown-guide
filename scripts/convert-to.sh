#! /usr/bin/bash

[ -z $1 ] && echo -e "FAILED: EMPTY ARG." && exit 0

if [ $1 = "html" ]; then
    OFILE="markdown-guide.html" # -t slidy; for html slides
    OFLAGS="-s --mathjax"
elif [ $1 = "pdf" ]; then
    OFILE="markdown-guide.pdf"
    OFLAGS="--pdf-engine=pdflatex --resource-path=.;src" # last arg is because of some weird pandoc behavior; such as making and removing a temp file in the directory
elif [ $1 = "slide" ]; then
    OFILE="markdown-slide.pdf"
    OFLAGS="-t beamer -V theme:Luebeck" 
else
    echo -e "FAILED: INVALID ARG." && exit 0
fi

IFILE="markdown-guide.md"

BFLAGS="-C --bibliography=misc/references.bib --csl=misc/ieee-with-url.csl" # remove the last arg if you do not have a .csl file

echo $(pandoc src/${IFILE} -o build/${OFILE} ${OFLAGS} ${BFLAGS})
