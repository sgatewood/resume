# (default recipe -- show available recipes)
help:
  @just -l

# renders templates
render:
  poetry --directory "${REPO_ROOT}/python" run python3 "${REPO_ROOT}/python/resume/render_templates.py"

# opens the rendered PDF in Google Chrome
open-pdf:
  open -a "Google Chrome" "${REPO_ROOT}/rendered/sean-gatewood-resume.pdf"

# formats the tree
format:
  nix fmt

# installs poetry packages
poetry-install:
  poetry --directory "${REPO_ROOT}/python" install

_border:
  #!/usr/bin/env bash
  set -euo pipefail

  screen_width=$(tput cols)
  echo -en '{{BOLD}}{{MAGENTA}}'
  printf '=%.0s' $(seq 1 "${screen_width}")
  echo -en '{{NORMAL}}'

alias r := render
alias o := open-pdf
alias fmt := format
alias pi := poetry-install
