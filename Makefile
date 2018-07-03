all:
	pdflatex se499-report.tex
	bibtex se499-report
	pdflatex se499-report.tex
	pdflatex se499-report.tex
