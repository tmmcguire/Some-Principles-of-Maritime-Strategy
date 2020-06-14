all: spoms.pdf

spoms-signatures.pdf: spoms.pdf spoms-signatures.tex
	pdflatex spoms-signatures.tex

spoms.pdf: spoms.tex
	xelatex spoms.tex
	makeindex spoms.idx
	xelatex spoms.tex

clean:
	rm -f *.aux *.log* *.out *.pdf *.toc
