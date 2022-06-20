#! /usr/bin/bash

[ -z $1 ] || [ -z $2 ] && echo -e "FAILED: EMPTY ARGS." && exit 0

if [ $1 = "html" ] && [ $2 = "guide" ]; then
    OFLAGS="-s --mathjax"
    FFLAGS=""
elif [ $1 = "html" ] && [ $2 = "slide" ]; then
    OFLAGS="-s --mathjax -t slidy"
    FFLAGS=""
elif [ $1 = "pdf" ] && [ $2 = "guide" ]; then
    OFLAGS="--pdf-engine=pdflatex"
    FFLAGS="--resource-path=.;src" # this arg is because of some weird pandoc behavior
elif [ $1 = "pdf" ] && [ $2 = "slide" ]; then
    OFLAGS="-t beamer"
    FFLAGS="--resource-path=.;src"
else
    echo -e "FAILED: INVALID ARGS." && exit 0
fi

BFLAGS="-C --bibliography=misc/references.bib --csl=misc/ieee-with-url.csl" # remove last arg if you do not have a .csl file

echo $(pandoc src/markdown-${2}.md -o build/markdown-${2}.${1} ${OFLAGS} ${FFLAGS} ${BFLAGS})



# if [ $1 = "html" ]; then
#     OFILE="markdown-guide.html" # -t slidy; for html slides
#     OFLAGS="-s --mathjax"
# elif [ $1 = "pdf" ]; then
#     OFILE="markdown-guide.pdf"
#     OFLAGS="--pdf-engine=pdflatex --resource-path=.;src" 
# elif [ $1 = "slide" ]; then
#     OFILE="markdown-slide.pdf"
#     OFLAGS="-t beamer -V theme:Luebeck" 
# else
#     echo -e "FAILED: INVALID ARG." && exit 0
# fi

# IFILE="markdown-guide.md"

# BFLAGS="-C --bibliography=misc/references.bib --csl=misc/ieee-with-url.csl" # remove the last arg if you do not have a .csl file

# echo $(pandoc src/markdown-${2}.md -o build/markdown-${2}.${1} ${OFLAGS} ${BFLAGS})
