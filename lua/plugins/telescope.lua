return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      local builtin = require("telescope.builtin")
      -- search in filesystem
      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      -- grep in filesystem the ripgrep has to be install for live grep to be actually usable sudo apt install ripgrep
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', "<leader><leader>", builtin.oldfiles, {})
      require("telescope").load_extension("ui-select")
    end
  }
}
