.PHONY: all migrate clean
all: migrate
	zola build
	touch docs/.nojekyll

migrate: clean
	scripts/obsidian-migrate.sh

clean:
	scripts/obsidian-clean.sh
