-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny


-- Toggle relative line number
lvim.keys.normal_mode["<C-L><C-L>"] = ":set invrelativenumber<CR>"

-- Disable tsserver
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "tsserver" })

-- Automatically changed to pwd
vim.opt.autochdir = true

--format on save
lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.lua", "*.py", "*.rs", "*.ts", "*.mjs", "*.js", "*.cjs" }
