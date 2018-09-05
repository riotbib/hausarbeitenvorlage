NAME=hausarbeitenvorlage
VERSION=0.1
SHELL=/bin/bash 

all: kapitel/*.md literaturverzeichnis.md

bash -c "pandoc kapitel/*.md literaturverzeichnis.md -s -o hausarbeit.pdf --toc --toc-depth=2 --template=template.tex -V lang=de -V fontsize=12pt -V papersize=a4 -V geometry:"top=2.5cm, bottom=2.5cm, left=2.5cm, right=3cm" --pdf-engine=xelatex -V mainfont="Times New Roman" --bibliography bibliografie.bib  --filter pandoc-citeproc";

% was zum fick
