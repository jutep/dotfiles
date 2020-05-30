" for vimwiki
set nocompatible
filetype plugin on
syntax on

" opening vimwiki
nmap <Leader>w <Plug>VimwikiIndex

" the vimwiki directory
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.mkd': 'markdown'}
let g:vimwiki_list = [
                  \{'path': '~/Nextcloud/vimwiki', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/academia', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/academia/sose20', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/academia/sose20/database1', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/academia/sose20/programming_languages', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/academia/sose20/statistics', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/academia/sose20/math1', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/academia/sose20/complexity_theory', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/academia/sose20/fsb', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/personal', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/personal/books', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/personal/tea', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/research', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/research/vaccines', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/research/antioxidantien', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/tech', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/tech/linux', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/tech/privacy', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/tech/programming', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/tech/programming/python', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/tech/programming/webdev', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/tech/programming/gameEngine', 'syntax': 'markdown', 'ext': '.md'},
                  \{'path': '~/Nextcloud/vimwiki/tech/linux/vim', 'syntax': 'markdown', 'ext': '.md'}]
