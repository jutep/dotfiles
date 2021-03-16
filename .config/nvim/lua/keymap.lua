vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

-- jj as Escape
vim.api.nvim_set_keymap('i', 'fj', '<Esc>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'jf', '<Esc>', {noremap = true, silent = true})

-- get rid of highlight
vim.api.nvim_set_keymap('n', '<Leader>h', ':noh<CR>', {noremap = true, silent = true})

-- file explorer
-- vim.api.nvim_set_keymap('n', '<Leader>ee', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeFindFile<CR>', {noremap = true, silent = true})

-- splitting and closing of windows
vim.api.nvim_set_keymap('n', '<Leader>s', ':sp<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>v', ':vsplit<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>q', ':q!<CR>', {noremap = true, silent = true})

-- window navigation with Ctrl-[h,j,k,l]
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})

-- window resizing with Alt + [h,j,k,l]
vim.api.nvim_set_keymap('n', '<M-h>', ':vertical resize -2<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<M-l>', ':vertical resize +2<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<M-j>', ':resize -2<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<M-k>', ':resize +2<CR>', {silent = true})

-- easy indenting
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})


-- TAB switch buffer (i have to find out what it does)
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})


-- --------------------------
-- ---------OWN--------------
-- --------------------------

-- renaming in whole file
vim.api.nvim_set_keymap('n', 'R', ':%s///g<Left><Left><Left>', {noremap = true, silent = true})
