all: build/haussegen.pdf

build/haussegen.pdf: haussegen.tex | build
	lualatex --output-directory=build --interaction=nonstopmode --halt-on-error haussegen.tex

clean:
	rm -rf build

build:
	mkdir -p build
