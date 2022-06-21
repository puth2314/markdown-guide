IDIR=src
ODIR=build

HFLAGS=-s --mathjax
FFLAGS=--resource-path=".;$(IDIR)"
BFLAGS=-C --bibliography=misc/references.bib --csl=misc/ieee-with-url.csl # remove last arg if you do not have a .csl file

.PHONY: all
# .SILENT: 

all: html-guide pdf-guide html-slide pdf-slide

html-guide: $(IDIR)/markdown-guide.md
	@pandoc $(IDIR)/markdown-guide.md \
	-o $(ODIR)/markdown-guide.html \
	$(HFLAGS) \
	$(BFLAGS)

pdf-guide: $(IDIR)/markdown-guide.md
	@pandoc $(IDIR)/markdown-guide.md \
	-o $(ODIR)/markdown-guide.pdf \
	--pdf-engine=pdflatex \
	$(FFLAGS) \
	$(BFLAGS)

html-slide: $(IDIR)/markdown-slide.md
	@pandoc $(IDIR)/markdown-slide.md \
	-o $(ODIR)/markdown-slide.html \
	-t slidy \
	$(HFLAGS) \
	$(BFLAGS)

pdf-slide: $(IDIR)/markdown-slide.md
	@pandoc $(IDIR)/markdown-slide.md \
	-o $(ODIR)/markdown-slide.pdf \
	-t beamer \
	$(FFLAGS) \
	$(BFLAGS)
