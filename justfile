# (default recipe -- show available recipes)
help:
  @just -l

# renders templates
render open="false":
  poetry --directory "${REPO_ROOT}/python" run python3 "${REPO_ROOT}/python/render_templates.py"

# opens the rendered PDF in Google Chrome
open-pdf:
  open -a "Google Chrome" "${REPO_ROOT}/rendered/sean-gatewood-resume.pdf"

# formats the tree
format:
  nix fmt

# installs poetry packages
poetry-install:
  poetry --directory "${REPO_ROOT}/python" install

alias r := render
alias o := open-pdf
alias fmt := format
alias pi := poetry-install
