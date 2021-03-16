-- too only search my dotfile (from primeagen)
require('telescope')

local M = {}

M.search_dotfiles = function () 
  require('telescope.builtin').find_files({
    cwd = "~/.config/",
    height=10,
    promtp= "- dotfiles -",
    shorten_path = false
  })
end

M.search_programming = function ()
  require('telescope.builtin').find_files({
    cwd = "~/prog/",
    height=10,
    promtp= "- progfiles -",
    shorten_path = false,
    file_ignore_patterns = {}
  })
end

return M
