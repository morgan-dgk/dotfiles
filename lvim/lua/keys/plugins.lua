-- Gitmojis telescope picker
lvim.builtin.which_key.mappings["sG"] = { "<cmd>lua require'telescope.builtin'.symbols{}<CR>", "Gitmoji" }

-- goto-preview
vim.keymap.set("n", "gpd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>",
  { desc = "Preview definition" })

vim.keymap.set("n", "gpi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>)",
  { desc = "Preview implementationm" })

vim.keymap.set("n", "gP", "<cmd>lua require('goto-preview').close_all_win()<CR>", { desc = "Close all windows"})

