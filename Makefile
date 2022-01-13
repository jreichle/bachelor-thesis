all:
	pdflatex dbsba
	bibtex dbsba
	makeindex dbsba.nlo -s nomencl.ist -o dbsba.nls
	pdflatex dbsba
	pdflatex dbsba
	rm -f *~ *.bak *.aux dbsba.{log,toc,lof,lot,blg,bbl,acr,fls,ilg,nlo,nls}

clean:
	rm -f *~ *.bak *.aux dbsba.{log,toc,lof,lot,blg,bbl,acr,fls,ilg,nlo,nls,pdf,synctex.gz}
