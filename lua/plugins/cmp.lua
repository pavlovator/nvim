return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",   -- LSP source for nvim-cmp
      "hrsh7th/cmp-buffer",     -- Buffer source for nvim-cmp
      "hrsh7th/cmp-path",       -- Path source for nvim-cmp
      "saadparwaiz1/cmp_luasnip", -- LuaSnip source for nvim-cmp
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
        expand = function(args)
        require("luasnip").lsp_expand(args.body)
        end,
      },
      sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
      },
      mapping = {
        ["<C-Space>"] = cmp.mapping.complete(),  -- Trigger completion manually
        ["<CR>"] = cmp.mapping.confirm({ select = true }),  -- Confirm completion
        ["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),  -- Next completion
        ["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),  -- Previous completion
      },
    })
    end
  }
}
