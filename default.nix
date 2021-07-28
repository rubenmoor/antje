{ pkgs ? import <nixpkgs> {} }:

let
  easy-ps = import ./easy-ps.nix { inherit pkgs; };

in pkgs.stdenv.mkDerivation {
  name = "bloody-beginner";
  buildInputs = easy-ps.buildInputs;
}
