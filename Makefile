Version=$(shell ls -r /usr/local/texlive/ | grep 20 | head -n 1)

install:
	mkdir  -p /usr/local/texlive/${Version}/texmf-dist/tex/platex/jpdoc
	cp jpdoc.sty /usr/local/texlive/${Version}/texmf-dist/tex/platex/jpdoc/
	mktexlsr