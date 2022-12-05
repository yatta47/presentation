.PHONY: setup
setup:
	@mkdir dist

.PHONY: pdf
pdf: clean setup
	@marp --pdf *.md
	@mv *.pdf dist/.

.PHONY: html
html: clean setup
	marp --html *.md
	mv *.html dist/.

.PHONY: pptx
pptx: clean setup
	marp --pptx *.md
	mv *.pptx dist/.

.PHONY: clean
clean:
	@rm -rf dist/
