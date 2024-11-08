-- Config structure from https://stackoverflow.com/questions/74816218/managing-lunar-vim-lvim-config-lua-by-separating-it-in-different-files

require "keys.main"           -- Keys for built-in features
require "keys.plugins"        -- Keys for plugged features

require "plugins.core.use"    -- Built-in plugins in use

vim.opt.fillchars = { fold = " ", }

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "0"
vim.opt.foldtext = require('foldtext')
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 1
vim.opt.foldnestmax = 4

lvim.plugins = {{ import = "plugins.user" }} -- Load user plugins from plugins/users directory

--format on save
lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.py", "*.rs", "*.ts", "*.mjs", "*.js", "*.cjs", "*.html", "*.json" }
