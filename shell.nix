let
  pkgs = import (fetchTarball "channel:nixos-25.11") { };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    bundler
    ruby
  ];

  BUNDLE_PATH = "vendor/bundle";
}
