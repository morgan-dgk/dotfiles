local formatters = require "lvim.lsp.null-ls.formatters"

-- lang server and formatter
local lsp_manager = require("lvim.lsp.manager")

lsp_manager.setup('eslint')

formatters.setup { { command = "prettierd", filetypes = { "javascript" } } }



lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "vscode-eslint-language-server"
end, lvim.lsp.automatic_configuration.skipped_servers
)
