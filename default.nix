#{ mkDerivation, base, protolude, set-monad, stdenv }:
{pkgs ? import <nixpkgs> {}}:

pkgs.haskellPackages.mkDerivation {
  pname = "padelude";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = with pkgs.haskellPackages; [ base protolude set-monad text ];
  homepage = "https://github.com/qfjp/padelude";
  description = "A reasonable prelude";
  license = with pkgs; stdenv.lib.licenses.gpl3;
}
