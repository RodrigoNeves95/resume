build:
	docker build -t latex_pdf .
run:
	docker run --rm -i -v $(PWD):/data latex_pdf pdflatex rodrigo_neves.tex 
	pdftoppm -png rodrigo_neves.pdf > resume_preview.png
	gio open rodrigo_neves.pdf
