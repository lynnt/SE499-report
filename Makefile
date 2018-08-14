filename="se499-report"
cont:
	latexmk -pvc -pdf ${filename}.tex
all:
	pdflatex ${filename}.tex
	bibtex ${filename}
	pdflatex ${filename}.tex
	pdflatex ${filename}.tex
count:
	detex *.tex | wc -w
spellcheck:
	aspell -t -c ${filename}.tex
compile:
	aspell -t -c ${filename}.tex && latexmk -pvc -pdf ${filename}.tex
clean:
	rm -f ${filename}.{ps,pdf,log,aux,out,dvi,bbl,blg}
