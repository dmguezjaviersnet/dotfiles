local status, packer = pcall(require, 'packer')

if not status then
	return
end

packer.init {
	ensure_dependencies  = true, -- Should packer install plugin dependencies?
	preview_updates      = true, -- If true, always preview updates before choosing which plugins to update, same as `PackerUpdate --preview`.
	display              = {
		open_fn         = function () 	-- An optional function to open a window for packer's display
			return require('packer.util').float { border = "rounded" }
		end,
		working_sym     = '⟳', -- The symbol for a plugin being installed/updated
		error_sym       = '✗', -- The symbol for a plugin with an error in installation/updating
		done_sym        = '✓', -- The symbol for a plugin which has completed installation/updating
		removed_sym     = '-', -- The symbol for an unused plugin which was removed
		moved_sym       = '→', -- The symbol for a plugin which was moved (e.g. from opt to start)
		header_sym      = '━', -- The symbol for the header line in packer's display
		show_all_info   = true, -- Should packer show all update details automatically?
		prompt_border   = 'double', -- Border style of prompt popups.
		keybindings     = { -- Keybindings for the display window
			quit = 'q',
			toggle_update = 'u', -- only in preview
			continue = 'c', -- only in preview
			toggle_info = '<CR>',
			diff = 'd',
			prompt_revert = 'r',
		}
	},
}


return packer.startup(function(use)
	-- //\\// ------------------- Packer package manager can manage itself --------------------------- //\\//
	use 'wbthomason/packer.nvim'

	-- //\\// ------------------- Dashboard --------------------------- //\\//
	use 'glepnir/dashboard-nvim'

	-- //\\// ------------------- Navegation --------------------------- //\\//
	use 'nvim-telescope/telescope.nvim'
	use 'junegunn/fzf'
	use 'kyazdani42/nvim-tree.lua'
	use 'ggandor/leap.nvim'
	-- use 'preservim/nerdtree'

	-- //\\// ------------------- Themes and icons --------------------------- //\\//
	use 'kyazdani42/nvim-web-devicons'
	use 'lewis6991/gitsigns.nvim' -- Git Decorations Lua
	use 'EdenEast/nightfox.nvim'
	use 'doums/darcula'
	use 'folke/tokyonight.nvim'
	use 'Everblush/everblush.nvim'
	use 'rebelot/kanagawa.nvim'
	use 'rmehri01/onenord.nvim'
	use 'Th3Whit3Wolf/onebuddy'
	use 'shaunsingh/moonlight.nvim'
	-- use 'briones-gabriel/darcula-solid.nvim'
	-- use 'rktjmp/lush.nvim'
	-- use 'arcticicestudio/nord-vim'
	-- use 'edeneast/nightfox.nvim'
	-- use 'ray-x/material_plus.nvim'
	-- use 'jnurmine/zenburn'
	-- use 'mhartington/oceanic-next'
	-- use 'vim-airline/vim-airline-themes'
	-- use 'w0ng/vim-hybrid'
	-- use 'cocopon/iceberg.vim'

	-- //\\// ------------------- Status bar --------------------------- //\\//
	-- use 'nvim-lualine/lualine.nvim'
	use 'feline-nvim/feline.nvim'
	-- use 'vim-airline/vim-airline'  -- Powerline written in vimscript

	-- //\\// ------------------- Syntax highlighting --------------------------- //\\//
	use 'nvim-treesitter/nvim-treesitter'

	-- //\\// ------------------- Languages --------------------------- //\\//
	use 'lervag/vimtex'
	use 'plasticboy/vim-markdown'

	-- //\\// ------ Debugger Adapter Protoci (DAP) ------ //\\//
	use 'mfussenegger/nvim-dap'

	-- //\\// ------ Languages general, LSP, snippets, code actions, linting, etc ------ //\\//
	use 'neovim/nvim-lsp'
	use 'williamboman/nvim-lsp-installer'
	use 'neovim/nvim-lspconfig'
	use 'onsails/lspkind-nvim'

	use { 'hrsh7th/nvim-cmp', requires = 'onsails/lspkind-nvim' }

	use { 'hrsh7th/cmp-nvim-lsp', requires = 'hrsh7th/nvim-cmp' }
	use { 'hrsh7th/cmp-nvim-lua', requires = 'hrsh7th/nvim-cmp' }
	use { 'hrsh7th/cmp-buffer', requires = 'hrsh7th/nvim-cmp' }
	use { 'hrsh7th/cmp-path', requires = 'hrsh7th/nvim-cmp' }

	use 'L3MON4D3/LuaSnip' -- Snippet engine written in Lua
	use { 'saadparwaiz1/cmp_luasnip', requires = 'L3MON4D3/LuaSnip' } -- Autocompleter for luasnip engine

	use { 'rafamadriz/friendly-snippets',
		requires = {
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip'
		}
	} -- Some snippets

	-- use 'SirVer/ultisnips'			-- Snippet engine written in vimscript
	-- use "quangnguyen30192/cmp-nvim-ultisnips"	-- Autocompleter for ultisnips engine
	-- use 'honza/vim-snippets'		-- Some snippets
	-- use 'dense-analysis/ale'		-- Linter
	use 'folke/trouble.nvim'
	use 'jose-elias-alvarez/null-ls.nvim'

	-- //\\// ------------------------- Dart/flutter ---------------------------- //\\//
	use 'akinsho/flutter-tools.nvim'
	-- use 'dart-lang/dart-vim-usein'
	-- use 'thosakwe/vim-flutter'
	-- use 'natebosch/vim-lsc'
	-- use 'natebosch/vim-lsc-dart'

	-- //\\// ----------------------- Terminal within neovim --------------------- //\\//
	use 'voldikss/vim-floaterm'
	-- use 'akinsho/toggleterm.nvim'	--Toggle terminal within nvim

	-- //\\// ------------------------- Session Managers -------------------------- //\\//
	use 'jedrzejboczar/possession.nvim'
	-- use 'tpope/vim-obsession'

	-- //\\// ------------------------------- Utils ------------------------------- //\\//
	use 'tjdevries/colorbuddy.vim'
	use 'rcarriga/nvim-notify' -- Notification manager
	use {
		'mrded/nvim-lsp-notify',
		config = function()
			require('lsp-notify').setup({})
		end
	} -- Notification of LSP processes using nvim-notify

	use 'windwp/nvim-autopairs' -- Autopairs written in lua
	-- use 'jiangmiao/auto-pairs' -- Autopairs
	use 'tpope/vim-commentary' -- Toggle comentaries on code
	use 'tpope/vim-fugitive' -- Git
	use 'junegunn/gv.vim' -- Git commit browser
	use 'szw/vim-maximizer' -- Maximize a buffer temporarly (util for vimspector)
	use "kylechui/nvim-surround" -- Surround tool
	use 'nvim-lua/plenary.nvim' -- Useful lua functions to complement neovim
	-- use 'godlygeek/tabular' -- Filter and align text
	use 'windwp/nvim-ts-autotag' -- Auto close tags (nvim)
	-- use 'alvan/vim-closetag'    -- Auto close tags (vim)
	-- use 'norcalli/nvim-colorizer.lja'
end)

-- local Plug = vim.fn['plug#']

-- vim.call('plug#begin', '~/.config/nvim/plugged')
-- -- Plugin outside ~/.vim/plugged with post-update hook

-- -- //\\// ------------------- Dashboard --------------------------- //\\//
-- Plug 'glepnir/dashboard-nvim'

-- -- //\\// ------------------- Navegation --------------------------- //\\//
-- Plug 'nvim-telescope/telescope.nvim'
-- Plug 'junegunn/fzf'
-- Plug 'kyazdani42/nvim-tree.lua'
-- Plug 'ggandor/leap.nvim'
-- -- Plug 'preservim/nerdtree'

-- -- //\\// ------------------- Themes and icons --------------------------- //\\//
-- Plug 'kyazdani42/nvim-web-devicons'
-- Plug 'lewis6991/gitsigns.nvim' -- Git Decorations Lua
-- Plug 'EdenEast/nightfox.nvim'
-- Plug 'doums/darcula'
-- Plug 'folke/tokyonight.nvim'
-- Plug 'Everblush/everblush.nvim'
-- Plug 'rebelot/kanagawa.nvim'
-- Plug 'rmehri01/onenord.nvim'
-- Plug 'Th3Whit3Wolf/onebuddy'
-- Plug 'shaunsingh/moonlight.nvim'
-- -- Plug 'briones-gabriel/darcula-solid.nvim'
-- -- Plug 'rktjmp/lush.nvim'
-- -- plug 'arcticicestudio/nord-vim'
-- -- plug 'edeneast/nightfox.nvim'
-- -- plug 'ray-x/material_plus.nvim'
-- -- plug 'jnurmine/zenburn'
-- -- plug 'mhartington/oceanic-next'
-- -- Plug 'vim-airline/vim-airline-themes'
-- -- Plug 'w0ng/vim-hybrid'
-- -- plug 'cocopon/iceberg.vim'

-- -- //\\// ------------------- Status bar --------------------------- //\\//
-- -- Plug 'nvim-lualine/lualine.nvim'
-- Plug 'feline-nvim/feline.nvim'
-- -- Plug 'vim-airline/vim-airline'  -- Powerline written in vimscript

-- -- //\\// ------------------- Syntax highlighting --------------------------- //\\//
-- Plug 'nvim-treesitter/nvim-treesitter'

-- -- //\\// ------------------- Languages --------------------------- //\\//
-- Plug 'lervag/vimtex'
-- Plug 'plasticboy/vim-markdown'

-- -- //\\// ------ Languages general, LSP, snippets, code actions, linting, etc ------ //\\//
-- Plug 'neovim/nvim-lsp'
-- Plug 'williamboman/nvim-lsp-installer'
-- Plug 'neovim/nvim-lspconfig'
-- Plug 'onsails/lspkind-nvim'
-- Plug 'hrsh7th/nvim-cmp'
-- Plug 'hrsh7th/cmp-nvim-lsp'
-- Plug 'hrsh7th/cmp-nvim-lua'
-- Plug 'hrsh7th/cmp-buffer'
-- Plug 'hrsh7th/cmp-path'
-- Plug 'L3MON4D3/LuaSnip' -- Snippet engine written in Lua
-- Plug 'saadparwaiz1/cmp_luasnip' -- Autocompleter for luasnip engine
-- Plug "rafamadriz/friendly-snippets" -- Some snippets
-- -- Plug 'SirVer/ultisnips'			-- Snippet engine written in vimscript
-- -- Plug "quangnguyen30192/cmp-nvim-ultisnips"	-- Autocompleter for ultisnips engine
-- -- Plug 'honza/vim-snippets'		-- Some snippets
-- -- Plug 'dense-analysis/ale'		-- Linter
-- Plug 'folke/trouble.nvim'
-- Plug 'jose-elias-alvarez/null-ls.nvim'

-- -- //\\// ------------------------- Dart/flutter ---------------------------- //\\//
-- Plug 'akinsho/flutter-tools.nvim'
-- -- Plug 'dart-lang/dart-vim-plugin'
-- -- Plug 'thosakwe/vim-flutter'
-- -- Plug 'natebosch/vim-lsc'
-- -- Plug 'natebosch/vim-lsc-dart'

-- -- //\\// ----------------------- Terminal within neovim --------------------- //\\//
-- Plug 'voldikss/vim-floaterm'
-- -- Plug 'akinsho/toggleterm.nvim'	--Toggle terminal within nvim

-- -- //\\// ------------------------- Session Managers -------------------------- //\\//
-- Plug 'jedrzejboczar/possession.nvim'
-- -- Plug 'tpope/vim-obsession'

-- -- //\\// ------------------------------- Utils ------------------------------- //\\//
-- Plug 'tjdevries/colorbuddy.vim'
-- Plug 'rcarriga/nvim-notify' -- Notification manager
-- Plug 'windwp/nvim-autopairs' -- Autopairs written in lua
-- -- Plug 'jiangmiao/auto-pairs' -- Autopairs
-- Plug 'tpope/vim-commentary' -- Toggle comentaries on code
-- Plug 'puremourning/vimspector' -- Debugging
-- Plug 'tpope/vim-fugitive' -- Git
-- Plug 'junegunn/gv.vim' -- Git commit browser
-- Plug 'szw/vim-maximizer' -- Maximize a buffer temporarly (util for vimspector)
-- Plug "kylechui/nvim-surround" -- Surround tool
-- Plug 'nvim-lua/plenary.nvim' -- Useful lua functions to complement neovim
-- Plug 'godlygeek/tabular' -- Filter and align text
-- Plug 'windwp/nvim-ts-autotag' -- Auto close tags (nvim)
-- -- Plug 'alvan/vim-closetag'    -- Auto close tags (vim)
-- -- Plug 'norcalli/nvim-colorizer.lja'

-- vim.call('plug#end')

-- -- vim.cmd [[ set statusline+=%{FugitiveHead()} ]]
