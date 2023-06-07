local opts = require("lsp_handlers")

local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
	return
end

mason_lspconfig.setup {
	ensure_installed = {
		"lua_ls"
	}
}

mason_lspconfig.setup_handlers {
	function(server_name)
		require("lspconfig")[server_name].setup {
			on_attach = opts.on_attach,
			capabilities = opts.capabilities
		}
	end
}

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local config = {
	virtual_text = false,
	signs = {
		active = signs
	},
	update_in_insert = true,
	underline = false,
	severity_sort = true,
	float = {
		focusable = false,
		style = "minimal",
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
}
-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[ autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false}) ]]
vim.diagnostic.config(config)
