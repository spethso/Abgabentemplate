SHELL=/bin/bash

all: build clean

build:
	pdflatex -synctex=1 ExXX_LastnameOfMembers
	pdflatex -synctex=1 ExXX_LastnameOfMembers
	pdflatex -synctex=1 ExXX_LastnameOfMembers

clean:
	rm -f *.aux *.bbl *.blg *.glo *.idx *.log *.toc *.out *.synctex.gz

cleanall: clean
	rm -f *.ps *.pdf *.dvi
