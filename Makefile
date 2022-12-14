all:
	cd python && poetry run python3 render_templates.py
	open -a "Google Chrome" rendered/sean-gatewood-resume.pdf
