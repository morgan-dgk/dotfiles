local formatters = require "lvim.lsp.null-ls.formatters"

-- lang server and formatter
local lsp_manager = require("lvim.lsp.manager")

lsp_manager.setup('angularls')
lsp_manager.setup('eslint')
lsp_manager.setup('tsserver')

lvim.plugins = {
  { "nvim-treesitter/nvim-treesitter-angular" },
}
formatters.setup { { command = "prettierd", filetypes = { "typescript" } } }

lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "angularls"
end, lvim.lsp.automatic_configuration.skipped_servers
)
lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "vscode-eslint-language-server"
end, lvim.lsp.automatic_configuration.skipped_servers
)
