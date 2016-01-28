text:
	pdftotext -layout delays.pdf

upload:
	ipython nbconvert --to html analysis.ipynb
	scp -r analysis.html $(u)@shell.boston.com:/web/bgapps/html/sandbox/data-analysis/keolis-delays/