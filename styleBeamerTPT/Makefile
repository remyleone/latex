TEX_FILES = $(wildcard *.tex)
PS_FILES = $(patsubst %.tex,%.ps,$(TEX_FILES))
PDF_FILES = $(patsubst %.tex,%.pdf,$(TEX_FILES))
2PDF_FILES = $(patsubst %.tex,%_2.pdf,$(TEX_FILES))
BIBTEX_FILES = *.aux

DVIPS		= dvips
DVIPSFLAGS	= -t letter -Ppdf
PS2PDF		= ps2pdf
PS2PDFFLAGS	= 
DVIPDF		= dvipdf
#DVIPDFFLAGS	= -sPAPERSIZE=letter
DVIPDFFLAGS	= -sPAPERSIZE=a4
LATEX		= pdflatex
BIBTEX		= bibtex

all : $(PDF_FILES)

%_2.pdf: %.pdf
	pdftops $< /tmp/toto.ps
	psnup -W12.8267cm -H9.62cm -b1.5cm -m1cm -r -s -pa4 -d10 -2up /tmp/toto.ps > /tmp/titi.ps
	ps2pdf /tmp/titi.ps $@



%.pdf : %.tex
	$(LATEX) $<
#	$(BIBTEX) $(BIBTEX_FILES)
	$(LATEX) $<
#	$(LATEX) $<

slides : $(2PDF_FILES)


clean :
	rm -f *.aux *.log *.out *.bbl *.blg *.nav *.snm *.toc

cleanslides :
	rm -f $(2PDF_FILES)

ultraclean: clean
	rm -f $(2PDF_FILES) $(PDF_FILES) $(DVI_FILES) *~


