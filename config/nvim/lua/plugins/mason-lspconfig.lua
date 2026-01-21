return {
	"williamboman/mason-lspconfig.nvim",
	lazy = false,
	dependencies = {
		"williamboman/mason.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		local lsp_servers = { "lua_ls", "ruff", "ts_ls", "html", "yamlls", "jsonls", "typos_lsp", "marksman" }

		require("mason-lspconfig").setup({
			ensure_installed = lsp_servers,
		})

		-- 手動で各サーバーをセットアップ
		local lspconfig = require("lspconfig")
		for _, server in ipairs(lsp_servers) do
			lspconfig[server].setup({})
		end

		-- キーマップ設定
		vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
		vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
		vim.keymap.set("n", "gt", "<C-t>")
		vim.keymap.set("n", "gf", "<cmd>lua vim.lsp.buf.format()<CR>")
		vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
		vim.keymap.set("n", "gn", "<cmd>lua vim.lsp.buf.rename()<CR>")
	end,
}
