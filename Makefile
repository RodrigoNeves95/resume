build:
	docker build -t latex_pdf .

resume_v1:
	docker run --rm -i -v $(PWD):/data latex_pdf pdflatex --output-directory resume/${version} resume/${version}/resume.tex  
	#pdftoppm -png resume/rodrigo_neves.pdf > resume/resume.png
	gio open resume/${version}/resume.pdf

resume_v2:
	docker run --rm -i -v $(PWD):/data latex_pdf xelatex --output-directory resume/V2 resume/V2/resume.tex  
	gio open resume/V2/resume.pdf
	
#cover_letter:
#	docker run --rm -i -v $(PWD):/data latex_pdf pdflatex --output-directory cover_letter cover_letter/cover_letter.tex  
#	pdftoppm -png cover_letter/rodrigo_neves.pdf > cover_letter/cover_letter.png
#	gio open cover_letter/cover_letter.pdf
