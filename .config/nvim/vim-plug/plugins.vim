call plug#begin('~/.config/nvim/autoload/plugged')
    " Auto pairs for '(' '[' '{' 
    Plug 'jiangmiao/auto-pairs'
    " vim-css-colors
    Plug 'ap/vim-css-color'
    " vimtex for latex integration
    Plug 'lervag/vimtex'    
    " vimwiki 
    Plug 'vimwiki/vimwiki'
    " markdown-preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'}
    " ranger as file mananger
    Plug 'francoiscabrol/ranger.vim'
    " A Vim Plugin for Lively Previewing LaTeX PDF Output
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end()
