# FILE=main

# TARGETS := $(FILE).pdf

# all: $(TARGETS)

# FIGURES = 

# $(FILE).pdf:: $(FILE).tex $(FILE).bib $(FIGURES) common_macros.tex

# %.pdf:: %.tex common_macros.tex common_tikz.tex
# 	pdflatex -shell-escape $<
# 	pdflatex -shell-escape $<
# 	-bibtex $(FILE).aux
# 	pdflatex -shell-escape $<
# 	pdflatex -shell-escape $<
# 	while ( grep -q '^LaTeX Warning: Label(s) may have changed' $(basename $<).log) \
# 	  do pdflatex $(notdir $<); done

# spellcheck:
# 	hunspell -d en_US -t -i utf-8 ${FILE}.tex

# .PHONY: all clean submission spellcheck

clean:
	rm -rf *.blg
	rm -rf *.out
	rm -rf *.bbl
	rm -rf *.log
	rm -rf *.ind
	rm -rf *.ilg
	rm -rf *.lot
	rm -rf *.lof
	rm -rf *.ind
	rm -rf *.idx
	rm -rf *.aux
	rm -rf *.toc
	rm -rf *.fls
	rm -rf *.fdb_latexmk
	rm -rf *.synctex.gz
	rm -rf *.pdf

#	evince $(FILE).pdf
