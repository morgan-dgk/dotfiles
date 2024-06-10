local linters = require "lvim.lsp.null-ls.linters"
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { command = "prettierd", filetypes = { "typescript" } } }

require('lvim.lsp.manager').setup('eslint')

lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "vscode-eslint-language-server"
end, lvim.lsp.automatic_configuration.skipped_servers
)
