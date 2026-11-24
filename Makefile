# Publish the site to the UofT CS webspace.
# Served at: https://www.cs.toronto.edu/~taddmao/

PUBLIC_HTML := $(HOME)/public_html

# Files that make up the site (everything else, incl. .git, is excluded).
SITE := index.html style.css

.PHONY: publish preview clean-remote

publish:
	rsync -av --delete \
		--exclude '.git' --exclude '.gitignore' \
		--exclude 'Makefile' --exclude 'README.md' \
		./ $(PUBLIC_HTML)/
	@echo "Published to $(PUBLIC_HTML)/  ->  https://www.cs.toronto.edu/~taddmao/"

# Open a local preview (Python's built-in server).
preview:
	@echo "Serving at http://localhost:8000  (Ctrl-C to stop)"
	python3 -m http.server 8000
