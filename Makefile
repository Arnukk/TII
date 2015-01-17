tex_file_name=paper#without .tex extention (and no space before #)
deps= 

$(tex_file_name).pdf: $(tex_file_name).tex $(deps)
	pdflatex $(tex_file_name).tex

full:
	pdflatex $(tex_file_name).tex
	bibtex $(tex_file_name).aux
	pdflatex $(tex_file_name).tex
	pdflatex $(tex_file_name).tex

preview:
	evince $(tex_file_name).pdf

clean:
	@echo cleaning...
	@rm *.aux  *.log  *.nav  *.out *.snm  *.toc *.blg *.bbl  *.pdf *.div *.ps
