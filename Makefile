.PHONY: all
all:
	zola build
	touch docs/.nojekyll
