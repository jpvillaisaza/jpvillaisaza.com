let
  channel = "nixos-25.11";
  url = "https://github.com/NixOS/nixpkgs/archive/${channel}.tar.gz";
  pkgs = import (fetchTarball url) { };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    bundler
    ruby
  ];

  BUNDLE_PATH = "vendor/bundle";
}
