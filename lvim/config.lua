-- Config structure from https://stackoverflow.com/questions/74816218/managing-lunar-vim-lvim-config-lua-by-separating-it-in-different-files

require "base.visual"                          --  Set colourscheme or statusline appearance here
require "base.other"                           --  Miscellaneous configs

require "keys.main"                            -- Keys for built-in features
require "keys.plugins"                         -- Keys for plugged features

require "plugins.core"                         -- core plugins config

lvim.plugins = { { import = "plugins.user" } } -- Load user plugin configs

--format on save
lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.lua", "*.py", "*.rs", "*.ts", "*.mjs", "*.js", "*.cjs", "*.html", "*.json" }
