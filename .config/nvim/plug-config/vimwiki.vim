" for vimwiki
set nocompatible
filetype plugin on
syntax on

" opening vimwiki
nmap <Leader>w <Plug>VimwikiIndex
nmap <Leader>a <Plug>VimwikiUISelect

" the vimwiki directory
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.mkd': 'markdown'}
let g:vimwiki_list = [
                  \{'path': '~/Nextcloud/vimwiki', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/academia', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/personal', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/research', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/tech', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/tech/hacking', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/tech/programming', 'syntax': 'markdown', 'ext': '.md'}]
