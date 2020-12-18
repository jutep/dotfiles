" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" use leader s, v to create new splits and Leader q to close the split
nmap <Leader>s :sp<CR>
nmap <Leader>v :vsplit<CR>
nmap <Leader>q :q<CR>


" instead of escape
inoremap fj <Esc>
inoremap jf <Esc>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" renaming
nnoremap R :%s///g<Left><Left><Left>


