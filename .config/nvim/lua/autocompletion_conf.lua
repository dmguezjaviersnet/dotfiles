-- Setup nvim-cmp.
local cmp = require('cmp')
local lspkind = require('lspkind')
local ls = require('luasnip')
-- local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")

cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			-- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
			ls.lsp_expand(args.body) -- For `luasnip` users.
			-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
			-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
		end,
	},
	mapping = {
		['<C-j>'] = cmp.mapping.select_next_item(),
		['<C-k>'] = cmp.mapping.select_prev_item(),
		['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
		['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
		['<C-space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
		['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
		['<C-e>'] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
		['<C-l>'] = cmp.mapping(function()
			if ls.expand_or_jumpable() then
				ls.expand_or_jump()
			end
		end, { 'i', 's' }),
		['<C-h>'] = cmp.mapping(function()
			if ls.jumpable(-1) then
				ls.jump(-1)
			end
		end, { 'i', 's' }),
		-- ["<Tab>"] = cmp.mapping(
		-- 		  function(fallback)
		-- 			cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
		-- 		  end,
		-- 		  { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
		-- 		),
		-- ["<S-Tab>"] = cmp.mapping(
		--   function(fallback)
		-- 	cmp_ultisnips_mappings.jump_backwards(fallback)
		--   end,
		--   { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
		-- ),
	},
	sources = {
		-- { name = 'gh_issues' },
		{ name = 'nvim_lua' },
		{ name = 'nvim_lsp' },
		{ name = 'path' },
		{ name = 'luasnip' }, -- For luasnip users.
		-- { name = 'ultisnips' }, -- For ultisnips users.
		-- { name = 'vsnip' }, -- For vsnip users.
		-- { name = 'snippy' }, -- For snippy users.
		{ name = 'buffer' },
	},
	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = function(entry, vim_item)
			vim_item.kind = string.format("%s", lspkind.presets.default[vim_item.kind])
			vim_item.menu = ({
				buffer = "[buf]",
				nvim_lsp = "[LSP]",
				nvim_lua = "[API]",
				path = "[path]",
				luasnip = "[snip]",
				-- gh_issues = "[issues]",
			})[entry.source.name]
			return vim_item
		end
	},
	experimental = {
		ghost_text = true,
		native_menu = false
	}
})
