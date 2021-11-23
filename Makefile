all: dbsba.pdf

dbsba.pdf:
	pdflatex dbsba
	bibtex dbsba
	pdflatex dbsba
	pdflatex dbsba
	rm -f *~ *.bak *.aux dbsba.{log,toc,lof,lot,blg,bblt }

clean:
	rm -f *~ *.bak *.aux dbsba.{log,toc,lof,lot,blg,bbl,pdf}