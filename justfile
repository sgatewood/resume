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

# checks if there are changes on this worktree (used by CI)
check-for-changes:
  #!/usr/bin/env bash
  set -euox pipefail

  if git status --porcelain | grep -v '.pdf$'; then
    echo "^^ changes found"
    echo "please run 'just render' to update rendered files"
    exit 1
  else
    echo "No changes :-)"
  fi

# helps you copy into sites that make you also paste this all in
vim-copyable-version:
  cat resume.yaml | yq -o json | jq -r '.experience[] | "Job Title:\n\(.title)\n\nCompany / Organization: \n\(.company)\n\nLocation: \n\(.location)\n\nFrom:\n\(.dates | split(" - ")[0])\n\nTo:\n\(.dates | split(" - ")[1] // "Present")\n\nDescription:\n\n" + (.notes | join("\n\n")) + "\n\n---\n"' | nvim -R -c "AutoSaveOff" -

alias r := render
alias o := open-pdf
alias fmt := format
alias fc := format-check
alias p := poetry
alias pi := poetry-install
