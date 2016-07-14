F=c_impl.c vbx_impl.c cl_impl.c c_impl.tex vbx_impl.tex cl_impl.tex

all:$(F)
	make -i c_impl
	make -i cl_impl
	make -i vbx_impl
	rm -rf *~ *.aux *.log *.pyg *.gz *.pdf


c_impl:c_impl.c c_impl.tex
	pdflatex -interaction=nonstopmode --shell-escape c_impl.tex
	convert -density 300 c_impl.pdf c_impl.jpg 

cl_impl:cl_impl.c cl_impl.tex
	pdflatex -interaction=nonstopmode --shell-escape cl_impl.tex
	convert -density 300 cl_impl.pdf cl_impl.jpg 

vbx_impl:vbx_impl.c vbx_impl.tex
	pdflatex -interaction=nonstopmode --shell-escape vbx_impl.tex
	convert -density 300 vbx_impl.pdf vbx_impl.jpg 

clean:
	rm -rf *.pdf *.aux *.log *.pyg *~
