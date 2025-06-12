{ pkgs }:
pkgs.mkShell {
  packages = with pkgs; [
    just
    poetry
    python3
    wkhtmltopdf
  ];
}
