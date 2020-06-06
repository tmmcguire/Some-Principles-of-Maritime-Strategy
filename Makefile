all: spoms.pdf

spoms-signatures.pdf: spoms.pdf
	sh ./signatures.sh

spoms.pdf: spoms.tex
	xelatex spoms.tex
	xelatex spoms.tex

clean:
	rm -f *.aux *.log* *.out *.pdf *.toc
