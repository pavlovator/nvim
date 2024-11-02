return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin")
      -- search in filesystem
      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      -- grep in filesystem the ripgrep has to be install for live grep to be actually usable sudo apt install ripgrep
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    end
  }
}
