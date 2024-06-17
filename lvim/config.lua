-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny


lvim.plugins = {
  { "HiPhish/rainbow-delimiters.nvim" },
  {
    "sindrets/diffview.nvim",
    event = "BufRead"
  }
}

vim.opt.fillchars = { fold = " ", }
-- Toggle relative line number
lvim.keys.normal_mode["<C-L><C-L>"] = ":set invrelativenumber<CR>"

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "0"
vim.opt.foldtext = require('foldtext')
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 1
vim.opt.foldnestmax = 4

-- Automatically changed to pwd
vim.opt.autochdir = true

--format on save
lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.lua", "*.py", "*.rs", "*.ts", "*.mjs", "*.js", "*.cjs" }
