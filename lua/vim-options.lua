vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")

-- Set indentation options for all C++ files
vim.cmd [[
  autocmd FileType cpp,cppreact setlocal shiftwidth=4 tabstop=4 expandtab
]]

vim.g.mapleader = " "
vim.opt.clipboard:append("unnamedplus")

