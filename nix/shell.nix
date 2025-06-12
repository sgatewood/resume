{ pkgs }:
pkgs.mkShell {
  packages = with pkgs; [
    just
    python3
  ];
}
