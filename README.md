hausarbeitenvorlage
===================

`hausarbeitenvorlage` ermöglicht es, mittels `pandoc` mit Markdown-Dateien eine Hausarbeit zu setzen. Die Vorgaben wie Seitenabstände, Schriftart oder Schriftgröße orientieren sich an [den Vorgaben des Studiengang Politikwissenschaft der Universität Marburg](https://www.uni-marburg.de/fb03/politikwissenschaft/eipoe/mitarbeiterinnen/hinweise), können jedoch simpel angepasst werden.

`hausarbeitenvorlage` benötigt folgende Pakete:

- `pandoc`, `pandoc-citeproc`
- `texlive-latexextra`
- `ttf-ms-fonts` für die propritäre Schrift *Times New Roman*

# Vorgang
1. Repository clonen: `git clone https://github.com/riotbib/hausarbeitenvorlage.git`
2. Anzupassende Dateien anpassen.
3. Kapitel in `kapitel/` als Markdown-Dateien schreiben. Markdown wird [auf pandoc.org](https://pandoc.org/MANUAL.html#pandocs-markdown) erklärt.  Wie zu zitieren ist, wird ebenfalls [auf pandoc.org](https://pandoc.org/demo/CITATIONS) erklärt.
4. PDF generieren.

# Anzupassende Dateien

- `dateien/deckblatt.tex`
  - Universität, Titel, Untertitel, Name, Matrikelnummer, Betreuer*in bitte eintragen. Datum wird automatisch generiert.

- `dateien/eigenstaendigkeitserklaerung.tex`
  - Name eintragen.

- `dateien/bibliografie.bib`
  - Alle verwendeten Quellen eintragen. Beispiel, wie dies zu erledigen ist kann [auf pandoc.org](https://pandoc.org/demo/biblio.bib) eingesehen werden.

- `dateien/literaturverzeichnis.md`
  - Diese Datei ist nur anzupassend, wenn die Überschrift für das Literaturverzeichnis anders heißen soll.

# Generieren eines PDF

Entweder du führst den Befehl aus:

`pandoc kapitel/*.md dateien/literaturverzeichnis.md -s -o hausarbeit.pdf --toc --toc-depth=2 --template=template.tex -V lang=de -V fontsize=12pt -V papersize=a4 -V geometry:"top=2.5cm, bottom=2.5cm, left=2.5cm, right=3cm" --pdf-engine=xelatex -V mainfont="Times New Roman" --bibliography dateien/bibliografie.bib`

Oder die Makefile:

`make`
