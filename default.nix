{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  pname = "logifetch";
  version = "0.1.0";

  src = ./.;

  nativeBuildInputs = with pkgs; [
    just
    dmd
  ];

  buildPhase = ''
    just all
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp bin/* $out/bin/
  '';
}
