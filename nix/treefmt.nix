{ pkgs, ... }:
{
  projectRootFile = "flake.nix";
  programs = builtins.mapAttrs (k: v: v // { enable = true; }) {
    black = { };
    isort = { };
    just = { };
    nixfmt = { };
    shfmt = {
      includes = [
        ".envrc"
      ];
    };
    yamlfmt = { };
  };

  settings.global.excludes = [
    ".editorconfig"
    "justfile"
  ];
}
