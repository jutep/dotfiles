vim.o.syntax = "enable"
vim.o.encoding="utf-8"                   -- The encoding displayed
vim.o.pumheight=10                       -- Makes popup menu smaller
vim.o.fileencoding="utf-8"               -- The encoding written to file
vim.o.ruler=true              		 -- " Show the cursor position all the time
vim.o.cmdheight=2                        -- More space for displaying messages
vim.o.splitbelow=true                    -- Horizontal splits will automatically be below
vim.o.wrap=false                         -- no wrapping at line ending
vim.o.splitright=true                    -- Vertical splits will automatically be to the right
vim.o.t_Co='256'                         -- Support 256 colors
vim.o.smartindent=true                   -- Makes indenting smart
vim.o.autoindent=true                    -- Good auto indent
vim.o.laststatus=0                       -- Always display the status line
vim.wo.number=true                        -- Line numbers
vim.wo.relativenumber=true                -- relative line numbers
vim.o.backup=false
vim.o.cursorline=true                    -- Enable highlighting of the current line
vim.o.background='dark'                  -- tell vim what the background color looks like
vim.o.showtabline=2                      -- Always show tabs
vim.o.updatetime=300                     -- Faster completion
vim.o.timeoutlen=1000                     -- By default timeoutlen is 1000 ms
vim.o.clipboard='unnamedplus'            -- Copy paste between vim and everything else
vim.o.colorcolumn='80'
vim.o.textwidth=80
vim.o.termguicolors=true
vim.o.background='dark'
vim.o.hidden=true
vim.o.scrolloff=8                        -- more centered when scrolling
vim.o.signcolumn="yes"

-- no tabs
vim.o.tabstop=4                          -- Insert 2 spaces for a tab
vim.o.softtabstop=4
vim.o.shiftwidth=4                       -- Change the number of space characters insertd for indentation
vim.o.expandtab=true                     -- Converts tabs to spaces
vim.o.smarttab=true
-- for vimwiki
vim.o.compatible=false
