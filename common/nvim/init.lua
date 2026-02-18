require('core.options')
require('core.autocmds')

local vim = vim
local Plug = vim.fn['plug#']

-- vim.cmdのラップにより、VimScriptの使用を可能に
vim.cmd([[
  call plug#begin()

  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
  Plug 'neanias/everforest-nvim', { 'branch': 'main' }
  Plug 'prettier/vim-prettier', {
     \ 'do': 'npm install --frozen-lockfile --production',
     \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

  " cohama/lexima.vim  Automatically close parentheses plugins
  Plug 'cohama/lexima.vim'

   " recommended configuration for nvim-cmp
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'

  " For vsnip users.
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'

  call plug#end()
]])

require('lsp.init')
require('plugins.cmp')

-- Colorschemeをeverforestに設定
vim.cmd([[colorscheme everforest]])
