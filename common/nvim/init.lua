vim.opt.number = true
vim.opt.cursorline = true

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

  Plug 'neovim/nvim-lspconfig'

vim.call('plug#end')

