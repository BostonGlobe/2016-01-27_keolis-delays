text:
	pdftotext -layout delays.pdf

upload:
	ipython nbconvert --to html analysis.ipynb
	mv analysis.html index.html
	scp -r index.html $(u)@shell.boston.com:/web/bgapps/html/sandbox/data-analysis/keolis-delays/