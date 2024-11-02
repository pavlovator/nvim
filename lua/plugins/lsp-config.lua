return {
    {
      "williamboman/mason.nvim",
      lazy = false,
      config = function()
        require("mason").setup()
      end
    },
    {
      "williamboman/mason-lspconfig.nvim",
      config = function()
        require("mason-lspconfig").setup({
          ensure_installed = {"lua_ls"}
        })
      end
    },
    {
      "neovim/nvim-lspconfig",
      config = function()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({})
        -- shift + k shows a documentation of function in lua
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        -- tieto bindings fakt neviem na co by som pouzival
        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
        vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      end
    }
}
