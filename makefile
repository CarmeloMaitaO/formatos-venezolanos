src=$(shell pwd)
target=$(src)/pruebas

$(target)/prueba.pdf: limpiar
	latexmk -pdflua -f -outdir=$(target) prueba.tex
limpiar:
	rm -f $(target)/*
.PHONY: limpiar
