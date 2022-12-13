all:
	cd python && poetry run python3 render_templates.py
	open -a "Google Chrome" rendered/resume.pdf
