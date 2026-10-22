
SRC = main.tex

## typeset using latexmk

latexmk:
	latexmk -pdf -recorder -pvc $(SRC)

## clean temporary files

clean: 
	-rm  -f \
	*.aux *.log *.nav *.log *.toc *.snm *.out *.dvi *.ps \
	body/*.aux \
	*latexmk *.bcf *.fls *.bbl *.blg *.lof *.lot *.tdo *.xml

.PHONY: clean distrib
