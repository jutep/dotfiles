vim.g.vimspector_enable_mappings = 'HUMAN'
-- maybe I want to change from the defaults
--[[
-- debugger debugger
vim.api.nvim_set_keymap('n', '<Leader>dd', ':call vimspector#Launch()<CR>', {noremap = true, silent = true})

-- go to specified window
vim.api.nvim_set_keymap('n', '<Leader>dc', ':call GotoWindow(g:vimspector_session_windows.code)<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>dt', ':call GotoWindow(g:vimspector_session_windows.tagpage)<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>dv', ':call GotoWindow(g:vimspector_session_windows.variables)<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>dw', ':call GotoWindow(g:vimspector_session_windows.watches)<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ds', ':call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>do', ':call GotoWindow(g:vimspector_session_windows.output)<CR>', {noremap = true, silent = true})

-- debugger exit
vim.api.nvim_set_keymap('n', '<Leader>de', ':call vimspector#Reset()<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<Leader>m', ':MaximizerToggle<CR>', {noremap = true, silent = true})
]]
vim.cmd [[packadd vimspector]]

