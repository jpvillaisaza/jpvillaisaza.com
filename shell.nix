{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  buildInputs = [
    pkgs.jekyll
    pkgs.rubyPackages.jekyll-redirect-from
  ];
}
