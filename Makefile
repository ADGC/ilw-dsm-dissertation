FILE=dissertation
OUTPUTNAME=Klipfel\ -\ ILW\ Direct\ Scattering\ Map


all: $(OUTPUTNAME).pdf clean

.PHONY: clean $(OUTPUTNAME).pdf 

clean:
	\rm -r *.aux *.log *.out *.bbl *.blg *.lof *.toc *.lot #For compiling on a Mac or a Linux Computer
# 	del *.aux *.log *.out *.bbl *.blg *.lof *.toc *.lot #For compiling on a Windows computer


$(OUTPUTNAME).pdf: $(FILE).tex
	xelatex -job-name=$(OUTPUTNAME) $(FILE)
# 	bibtex $(OUTPUTNAME) #For compiling on a Windows Machine
	bibtex $(FILE) #For compiling on a Mac
	xelatex -job-name=$(OUTPUTNAME) $(FILE)
	xelatex -job-name=$(OUTPUTNAME) $(FILE)