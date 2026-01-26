local lsp_names = {
	'lua_ls',
	'ts_ls'
}

vim.lsp.enable(lsp_names)

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts) -- 定義へジャンプ
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)  -- 宣言へジャンプ
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts) -- 実装を一覧表示
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts) -- 参照箇所を一覧表示
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts) -- 前の指摘へ
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts) -- 次の指摘へ
  end,
})


