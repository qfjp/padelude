#{ mkDerivation, base, protolude, set-monad, stdenv }:
{pkgs ? import <nixpkgs> {}}:


let set-monad = pkgs.haskellPackages.callCabal2nix "set-monad"
  (pkgs.fetchFromGitHub {
    owner = "giorgidze";
    repo = "set-monad";
    rev = "86f7130ee9bfcd95c4801cbd9f6a6e886a42c160";
    sha256 = "14dy9vhqfwdh3xb0z8ggdqnrfpggixq7yysp2n12s1p5wsd8pwgw";
  }) {};
in
  pkgs.haskellPackages.mkDerivation {
    pname = "padelude";
    version = "0.1.2.2";
    src = ./.;
    libraryHaskellDepends = with pkgs.haskellPackages; [ base protolude set-monad text ];
    homepage = "https://github.com/qfjp/padelude";
    description = "A reasonable prelude";
    license = with pkgs; stdenv.lib.licenses.gpl3;
}
