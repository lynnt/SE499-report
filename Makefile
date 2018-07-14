filename="se499-report"
all:
	pdflatex ${filename}.tex
	bibtex ${filename}
	pdflatex ${filename}.tex
	pdflatex ${filename}.tex
count:
	detex *.tex | wc -w
compile:
	latexmk -pvc -pdf ${filename}.tex
