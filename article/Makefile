MAIN_FILE = main

pdf:
	echo ${MAIN_FILE}.tex
	xelatex ${MAIN_FILE}.tex
	makeindex ${MAIN_FILE}.idx
	bibtex ${MAIN_FILE}.aux
	xelatex ${MAIN_FILE}.tex
	xelatex ${MAIN_FILE}.tex
	
clean:

	rm -f *.aux *.bbl *.blg *.bst *.dvi *.idx *.lof *.log *.toc *.out *.synctex.gz *.glo *.ind *.ilg *.pdfsync
