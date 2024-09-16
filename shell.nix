let
  pkgs = import <nixpkgs> { };
in
pkgs.mkShell {
  packages = with pkgs; [
    python3
    python311Packages.python-lsp-server
    python311Packages.black
    python311Packages.isort
    ruff
  ];
}
