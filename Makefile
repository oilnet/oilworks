SHELL:=/bin/bash -O globstar

PROJECT=mws

TEX=xelatex
BIBTEX=biber
BUILDTEX=$(TEX) $(PROJECT).tex

TMPFILES={*.{aux,log,out,toc,blg,bbl,bcf,xml,html,odt,docx,zip,~lock*},*{synctex*,~,-blx.*}}
OUTFILES=*.pdf

pdf:
	$(BUILDTEX)

bib:
	$(BIBTEX) $(PROJECT)

all: pdf bib pdf

clean-all:
	rm -f $(TMPFILES) $(OUTFILES)

clean:
	rm -f $(TMPFILES)
