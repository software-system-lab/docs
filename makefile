LATEX=pdflatex
OUTPUT_DIR=build
TEX=usecase

all: dirs $(TEX)

%: %.tex
	$(LATEX) -output-directory=$(OUTPUT_DIR) $<

dirs:
	mkdir -p $(OUTPUT_DIR)

clean:
	rm -rf $(OUTPUT_DIR)
	rm -rf *.gz **/*.gz *.pdf **/*.pdf **/*.log **/*.fdb_latexmk **/*.fls **/*.aux
