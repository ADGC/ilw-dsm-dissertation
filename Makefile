FILE=dissertation
OUTPUTNAME=Klipfel\ -\ ILW\ Direct\ Scattering\ Map

#==========================
# For compiling on Windows: Comment lines 13 and 18-22 and then uncomment lines 14 and 23-26
#==========================

all: $(OUTPUTNAME).pdf clean

.PHONY: clean $(OUTPUTNAME).pdf 

clean:
	\rm -r *.aux *.log *.out *.bbl *.blg *.lof *.toc *.lot #For compiling on a Mac or a Linux Computer
# 	del *.aux *.log *.out *.bbl *.blg *.lof *.toc *.lot #For compiling on a Windows computer


$(OUTPUTNAME).pdf: $(FILE).tex
	xelatex $(FILE)
	bibtex $(FILE)
	xelatex $(FILE)
	xelatex $(FILE)
	mv $(FILE).pdf $(OUTPUTNAME).pdf
# 	xelatex -job-name=$(OUTPUTNAME) $(FILE)
# 	bibtex $(OUTPUTNAME)
# 	xelatex -job-name=$(OUTPUTNAME) $(FILE)
# 	xelatex -job-name=$(OUTPUTNAME) $(FILE)