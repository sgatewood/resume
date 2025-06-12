# (default recipe -- show available recipes)
help:
  @just -l

# renders templates
render:
  @just poetry run python3 "${REPO_ROOT}/python/resume/render_templates.py"

# opens the rendered PDF in Google Chrome
open-pdf:
  open -a "Google Chrome" "${REPO_ROOT}/rendered/sean-gatewood-resume.pdf"

# formats the tree
format:
  nix fmt

# checks if the tree is formatted
format-check:
  nix flake check --impure

# wraps poetry with the correct directory
poetry *args:
  poetry --directory "${REPO_ROOT}/python" {{args}}

# installs poetry packages
poetry-install:
  @just poetry install

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
alias fc := format-check
alias p := poetry
alias pi := poetry-install
