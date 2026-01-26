require('core.options')
require('core.autocmds')
require('lsp.init')

local vim = vim
local Plug = vim.fn['plug#']

local Plug = vim.fn['plug#']

-- vim.cmdのラップにより、VimScriptの使用を可能に
vim.cmd([[
  call plug#begin()
  Plug 'neovim/nvim-lspconfig'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
  call plug#end()
]])
