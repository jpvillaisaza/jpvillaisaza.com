let
  # nixpkgs-25.11-darwin
  commit = "fabb8c9deee281e50b1065002c9828f2cf7b2239";
  url = "https://github.com/NixOS/nixpkgs/archive/${commit}.tar.gz";
  pkgs = import (fetchTarball url) { };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    bundler
    ruby
  ];

  BUNDLE_PATH = "vendor/bundle";
}
