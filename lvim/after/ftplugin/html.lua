local lsp_manager = require("lvim.lsp.manager")

lvim.builtin.treesitter.autotag.enable = true

lsp_manager.setup('emmet_language_server')

-- lang server and formatter
