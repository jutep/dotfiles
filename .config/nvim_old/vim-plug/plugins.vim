call plug#begin('~/.config/nvim/autoload/plugged')
    " Auto pairs for '(' '[' '{' 
    Plug 'jiangmiao/auto-pairs'
    " vim-css-colors
    Plug 'ap/vim-css-color'
    " vimtex for latex integration
    Plug 'lervag/vimtex'    
    " A Vim Plugin for Lively Previewing LaTeX PDF Output
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
    " vimwiki 
    Plug 'vimwiki/vimwiki'
    " markdown-preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'}
    " Coc shit
    Plug 'neoclide/coc.nvim', {'branch': 'release'}    
    " fzf integration
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

    " for writing goyo and limelight
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'

    " for ultisnips
    Plug 'sirver/ultisnips'
    Plug 'honza/vim-snippets'

call plug#end()
