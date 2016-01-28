text:
	pdftotext -layout delays-jun-nov.pdf
	pdftotext -layout delays-dec.pdf
	cat delays-jun-nov.txt delays-dec.txt > delays.txt 


upload:
	ipython nbconvert --to html analysis.ipynb
	mv analysis.html index.html
	scp -r index.html $(u)@shell.boston.com:/web/bgapps/html/sandbox/data-analysis/keolis-delays/