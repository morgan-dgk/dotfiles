-- Plugin for managing Github PRs and Issues from Neovim: https://github.com/pwntester/octo.nvim

-- gh cli must be installed for this to function
if vim.fn.executable("gh") == 1 then
  return {
    'pwntester/octo.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      -- OR 'ibhagwan/fzf-lua',
      'nvim-tree/nvim-web-devicons',
    },
    opts = {}
  }
else
  vim.notify("gh cli not found, please install to use octo!", vim.log.levels.ERROR)
  return {}
end
