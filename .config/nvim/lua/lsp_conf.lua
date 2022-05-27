-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local key_opts = { noremap=true, silent=true }
-- vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', key_opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', key_opts)
-- vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
		-- Enable completion triggered by <c-x><c-o>
		vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

		-- Mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', key_opts)
		vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', key_opts)
		vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>kk', '<cmd>lua vim.lsp.buf.hover()<CR>', key_opts)
		vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', key_opts)
		vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', key_opts)
		vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', key_opts)
		vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', key_opts)
		vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', key_opts)
		vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', key_opts)
		vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', key_opts)
		vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', key_opts)
		vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', key_opts)
		vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', key_opts)
end

local lsp_installer = require("nvim-lsp-installer")

-- Flutter-tools.nvim
-- alternatively you can override the default configs
require("flutter-tools").setup {
		ui = {
				-- the border type to use for all floating windows, the same options/formats
				-- used for ":h nvim_open_win" e.g. "single" | "shadow" | {<table-of-eight-chars>}
				border = "rounded",
				-- This determines whether notifications are show with `vim.notify` or with the plugin's custom UI
				-- please note that this option is eventually going to be deprecated and users will need to
				-- depend on plugins like `nvim-notify` instead.
				notification_style = 'plugin'
		},
		decorations = {
				statusline = {
						-- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
						-- this will show the current version of the flutter app from the pubspec.yaml file
						app_version = true,
						-- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
						-- this will show the currently running device if an application was started with a specific
						-- device
						device = true,
				}
		},
		-- debugger = { -- integrate with nvim dap + install dart code debugger
		-- 		enabled = false,
		-- 		run_via_dap = false, -- use dap instead of a plenary job to run flutter apps
		-- 		register_configurations = function(paths)
		-- 				require("dap").configurations.dart = {}
		-- 		end,
		-- },
		-- flutter_path = "/home/nogard/my_apps/flutter/common/flutter/bin", -- <-- this takes priority over the lookup
		-- flutter_lookup_cmd = nil, -- example "dirname $(which flutter)" or "asdf where flutter"
		fvm = false, -- takes priority over path, uses <workspace>/.fvm/flutter_sdk if enabled
		widget_guides = {
				enabled = false,
		},
		closing_tags = {
				highlight = "ErrorMsg", -- highlight for the closing tag
				prefix = ">", -- character to use for close tag e.g. > Widget
				enabled = true -- set to false to disable
		},
		dev_log = {
				enabled = true,
				open_cmd = "70vnew", -- command to use to open the log buffer
		},
		dev_tools = {
				autostart = false, -- autostart devtools server if not detected
				auto_open_browser = false, -- Automatically opens devtools in the browser
		},
		outline = {
				open_cmd = "30vnew", -- command to use to open the outline buffer
				auto_open = false -- if true this will open the outline automatically when it is first populated
		},
		lsp = {
				color = { -- show the derived colours for dart variables
						enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
						background = false, -- highlight the background
						foreground = false, -- highlight the foreground
						virtual_text = true, -- show the highlight using virtual text
						virtual_text_str = "■", -- the virtual text character to highlight
		},
		on_attach = on_attach,
		-- capabilities = my_custom_capabilities -- e.g. lsp_status capabilities
		--- OR you can specify a function to deactivate or change or control how the config is created
		capabilities = function(config)
				config.specificThingIDontWant = false
				return config
		end,
		settings = {
				showTodos = true,
				completeFunctionCalls = true,
				analysisExcludedFolders = {"/home/nogard/my_apps/flutter/common/flutter/.pub-cache/hosted/pub.dartlang.org"}
		}
	}
}

-- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
-- or if the server is already installed).
lsp_installer.on_server_ready(function(server)
    local opts = { on_attach = on_attach }
		if server.name == "sumneko_lua" then
				opts.settings = {
						Lua = {
								diagnostics = {
										globals = { 'vim', 'use'}
								}
						}
				}
		end
    server:setup(opts)
end)


-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
-- vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
vim.diagnostic.config({
		virtual_text = true,
		signs = true,
		underline = true,
		update_in_insert = true,
		severity_sort = false,
})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
		local hl = "DiagnosticSign" .. type
		vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
