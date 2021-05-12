{inputs, system, pkgs, ...}:
let 
  neovim-nightly = inputs.neovim-nightly-overlay.packages.${system}.neovim;
in
{
  home.packages = with pkgs; [
    tree-sitter

  ];
  programs.neovim = {
    enable = true;
    vimAlias = true;

    plugins = with pkgs.vimPlugins; [
      vimwiki
      nvim-treesitter
      telescope-nvim
      nvim-autopairs

      nvim-lspconfig
      nvim-compe
      vim-vsnip

      nvim-web-devicons
      nvim-tree-lua
    ];

    extraConfig = ''
      lua << EOF
        ${builtins.readFile ./settings.lua}
        ${builtins.readFile ./keymap.lua}
        ${builtins.readFile ./lsp/hls.lua}
        ${builtins.readFile ./lsp/pyright.lua}
        ${builtins.readFile ./lsp/sumneko.lua}
        ${builtins.readFile ./lsp/rnix.lua}
        ${builtins.readFile ./nv-compe.lua}
        ${builtins.readFile ./nv-treesitter.lua}
      EOF
      ${builtins.readFile ./colorscheme/snazzy.vim}
    '';
    package = neovim-nightly;
  };
}
