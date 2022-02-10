PYTHON_CMD := cd python && pipenv run python3 render_template.py
TEMPLATES_DIR := ../templates
RESUME_YAML := ../resume.yaml
OUTPUT_FOLDER := ../rendered
define render
	$(PYTHON_CMD) $(TEMPLATES_DIR)/$(1) $(RESUME_YAML) > $(OUTPUT_FOLDER)/$(2)
endef

all: html md

html:
	$(call render,resume_template.html,resume.html)

md:
	$(call render,resume_template.md,resume.md)
