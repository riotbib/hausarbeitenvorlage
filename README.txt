% hausarbeitenvorlage

`hausarbeitenvorlage` benötigt folgende Pakete:

- `pandoc`
- `ttf-ms-fonts` für die propritäre Schrift *Times New Roman*

# Vorgang
1. Anzupassende Dateien anpassen.
2. Kapitel in `kapitel/` als Markdown-Dateien schreiben. Markdown wird [auf pandoc.org](https://pandoc.org/MANUAL.html#pandocs-markdown) erklärt.  Wie zu zitieren ist, wird ebenfalls [auf pandoc.org](https://pandoc.org/demo/CITATIONS) erklärt.
3. PDF generieren.

# Anzupassende Dateien

- `dateien/deckblatt.tex`
  - Universität, Titel, Untertitel, Name, Matrikelnummer, Betreuer*in bitte eintragen. Datum wird automatisch generiert.

- `dateien/eigenstaendigkeitserklaerung.tex`
  - Name eintragen.

- `dateien/bibliografie.bib`
  - Alle verwendeten Quellen eintragen. Beispiel, wie dies zu erledigen ist kann [auf pandoc.org](https://pandoc.org/demo/biblio.bib) eingesehen werden.

- `dateien/literaturverzeichnisi.md`
  - Diese Datei ist nur anzupassend, wenn die Überschrift für das Literaturverzeichnis anders heißen soll.

# Generieren eines PDF

`pandoc kapitel/*.md literaturverzeichnis.md -s -o hausarbeit.pdf --toc --toc-depth=2 --template=template.tex -V lang=de -V fontsize=12pt -V papersize=a4 -V geometry:"top=2.5cm, bottom=2.5cm, left=2.5cm, right=3cm" --pdf-engine=xelatex -V mainfont="Times New Roman" --bibliography bibliografie.bib  --filter pandoc-citeproc`


