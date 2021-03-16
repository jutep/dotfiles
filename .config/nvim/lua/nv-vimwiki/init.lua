
-- opening vimwiki
vim.api.nvim_set_keymap('n', '<Leader>w', '<Plug>VimwikiIndex', {silent = true})
vim.api.nvim_set_keymap('n', '<Leader>a', '<Plug>VimwikiUISelect', {silent = true})

-- vimwiki directory
vim.g.vimwiki_list = {
  {
    path = '~/Nextcloud/vimwiki',
    syntax = 'markdown',
    ext = '.md'
  },
  {
    path = '~/Nextcloud/vimwiki/academia',
    syntax = 'markdown',
    ext = '.md'
  },
  {
    path = '~/Nextcloud/vimwiki/personal',
    syntax = 'markdown',
    ext = '.md'
  },
  {
    path = '~/Nextcloud/vimwiki/research',
    syntax = 'markdown',
    ext = '.md'
  },
  {
    path = '~/Nextcloud/vimwiki/tech',
    syntax = 'markdown',
    ext = '.md'
  },
  {
    path = '~/Nextcloud/vimwiki/tech/hacking',
    syntax = 'markdown',
    ext = '.md'
  },
  {
    path = '~/Nextcloud/vimwiki/tech/programming',
    syntax = 'markdown',
    ext = '.md'
  }
}

vim.cmd [[packadd vimwiki]]

