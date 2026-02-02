require('core.options')
require('core.autocmds')
require('lsp.init')

local vim = vim
local Plug = vim.fn['plug#']

-- vim.cmdのラップにより、VimScriptの使用を可能に
vim.cmd([[
  call plug#begin()
  Plug 'neovim/nvim-lspconfig'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
  Plug 'cohama/lexima.vim'
  Plug 'neanias/everforest-nvim', { 'branch': 'main' }
  Plug 'prettier/vim-prettier', {
     \ 'do': 'npm install --frozen-lockfile --production',
     \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
  call plug#end()
]])

-- Colorschemeをeverforestに設定
vim.cmd([[colorscheme everforest]])


