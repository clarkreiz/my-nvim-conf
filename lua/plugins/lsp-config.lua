return {
	{
		"neovim/nvim-lspconfig", -- Основной плагин для LSP
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		config = function()
			local lspconfig = require("lspconfig")

			-- Общие настройки для всех LSP серверов
			local on_attach = function(client, bufnr)
				local bufopts = { noremap = true, silent = true, buffer = bufnr }
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
			end

			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Настройки для Lua
			lspconfig.lua_ls.setup({
				on_attach = on_attach,
				capabilities = capabilities,
				settings = {
					Lua = {
						runtime = {
							version = "LuaJIT",
						},
						diagnostics = {
							globals = { "vim" },
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
							checkThirdParty = false,
						},
					},
				},
			})

			-- Настройки для Python
			lspconfig.pyright.setup({
				on_attach = on_attach,
				capabilities = capabilities,
			})


			-- Добавьте здесь конфигурации для других языков
		end,
	},
}
