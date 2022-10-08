local on_attach = require("lsp_keymaps")

local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

-- local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
-- function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
-- 	opts = opts or {}
-- 	opts.border = "rounded"
-- 	opts.location = "top-left"
-- 	return orig_util_open_floating_preview(contents, syntax, opts, ...)
-- end

-- Register a handler that will be called for each installed server when it"s ready (i.e. when installation is finished
-- or if the server is already installed).
lsp_installer.on_server_ready(function(server)
	local opts = { on_attach = on_attach }

	if server.name == "jsonls" then
	  local jsonls_opts = require("user.lsp.settings.jsonls")
	  opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
	end
	
	if server.name == "sumneko_lua" then
		local sumneko_opts = require("user.lsp.settings.sumneko_lua")
		opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	end

	if server.name == "html" then
		capabilities.textDocument.completion.completionItem.snippetSupport = true
		opts.settings = {
			configurationSection = { "html", "css", "javascript" },
			embeddedLanguages = {
				css = true,
				javascript = true
			},
			provideFormatter = true,
			capabilities = capabilities
		}
	end

	if server.name == "dartls" then
		return
	end
	server:setup(opts)
end)

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
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
vim.diagnostic.config(config)
