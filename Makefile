# SHELL:=/bin/bash -O globstar

MAIN=beispiel
SOURCES=Makefile $(wildcard *.sty *.tex)
FIGURES:=$(shell find images/* -type f)

LATEXMK=latexmk
LATEX=xelatex
BIBTEX=biber

LATEXMKOPTS=-pdf
LATEXOPTS=-synctex=1 # --shell-escape

NONSTOP=--interaction=batchmode
CONTINUOUS=-pvc

all: $(MAIN).pdf

.refresh:
	touch .refresh

$(MAIN).pdf: .refresh $(SOURCES) $(FIGURES)
	$(LATEXMK) $(LATEXMKOPTS) $(CONTINUOUS) -pdflatex="$(LATEX) $(LATEXOPTS) $(NONSTOP) %O %S" $(MAIN)

force:
	touch .refresh
	rm -f $(MAIN).pdf
	$(LATEXMK) $(LATEXMKOPTS) -pdflatex="$(LATEX) $(LATEXOPTS)" $(MAIN)

clean:
	$(LATEXMK) -C $(MAIN)
	rm -f $(MAIN).pdfsync $(MAIN).synctex.gz
	rm -f *~ *.tmp
	rm -f *.bbl *.blg *.aux *.end *.fls *.log *.out *.fdb_latexmk *.run.xml

once:
	$(LATEXMK) $(LATEXMKOPTS) -pdflatex="$(LATEX) $(LATEXOPTS) $(NONSTOP) %O %S" $(MAIN)

debug:
	$(LATEX) $(LATEXOPTS) $(MAIN)

.PHONY: clean force once all
