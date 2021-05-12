{ config, pkgs, libs, ... }:
{
  home.packages = with pkgs; [
    # C
    gcc

    # Haskell
    ghc
    haskellPackages.cabal-install
    haskellPackages.stack
    haskellPackages.haskell-language-server

    # lua
    lua
    sumneko-lua-language-server

    # JavaScript
    nodejs
    nodePackages.livedown
    yarn

    # python
    (python3.withPackages (ps: with ps; [ setuptools pip ]))
    poetry
    autoflake
    python3Packages.pip
    python3Packages.black
    python3Packages.ipython
    python3Packages.isort
    python3Packages.parso
    python3Packages.twine
    nodePackages.pyright

    rnix-lsp
    ruby
    perl
  ];
}
