PANDOC = pandoc
OUTPUT = hausarbeit.pdf

default:
	$(PANDOC) kapitel/*.md dateien/literaturverzeichnis.md -s -o $(OUTPUT) --toc --toc-depth=2 --template=template.tex -V lang=de -V fontsize=12pt -V papersize=a4 -V geometry:"top=2.5cm, bottom=2.5cm, left=2.5cm, right=3cm" --pdf-engine=xelatex -V mainfont="Times New Roman" --bibliography dateien/bibliografie.bib

clean:
	$(RM) $(OUTPUT)
