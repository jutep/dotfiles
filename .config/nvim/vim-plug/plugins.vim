call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{' 
    Plug 'jiangmiao/auto-pairs'
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " python folding
    Plug 'tmhedberg/simpylfold'
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
    " plugin to hightlight for f,t,F,T jump
    Plug 'unblevable/quick-scope'
call plug#end()
