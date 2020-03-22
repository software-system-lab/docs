# docs
## Install pdflatex
reference: https://www.latex-project.org/get

## Convert to PDF
1. Use makefile
```
$ make
```

2. Output
```
├── build
│   ├── usecase.aux
│   ├── usecase.log
│   ├── usecase.pdf
│   └── usecase.toc
```

## Add tex file
Add the new file name(without .tex) to `TEX` tag in `makefile`, splitting with a space.

sample: Adding a hello.tex
```
LATEX=pdflatex
OUTPUT_DIR=build
TEX=usecase hello   # Adding hello here, splitting with a space.

all: dirs $(TEX)

%: %.tex
	$(LATEX) -output-directory=$(OUTPUT_DIR) $<

dirs:
	mkdir -p $(OUTPUT_DIR)

clean:
	rm -rf $(OUTPUT_DIR)
	rm -rf *.gz **/*.gz *.pdf **/*.pdf **/*.log **/*.fdb_latexmk **/*.fls **/*.aux

```
