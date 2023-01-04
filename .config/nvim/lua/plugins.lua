local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
-- Plugin outside ~/.vim/plugged with post-update hook

-- //\\// ------------------- Dashboard --------------------------- //\\//
Plug 'glepnir/dashboard-nvim'

-- //\\// ------------------- Navegation --------------------------- //\\//
Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/fzf'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'ggandor/leap.nvim'
-- Plug 'preservim/nerdtree'

-- //\\// ------------------- Themes and icons --------------------------- //\\//
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lewis6991/gitsigns.nvim'  -- Git Decorations Lua
Plug 'EdenEast/nightfox.nvim'
Plug 'doums/darcula'
Plug 'folke/tokyonight.nvim'
Plug 'Everblush/everblush.nvim'
Plug 'rebelot/kanagawa.nvim'
Plug 'rmehri01/onenord.nvim'
Plug 'Th3Whit3Wolf/onebuddy'
Plug 'shaunsingh/moonlight.nvim'
-- Plug 'briones-gabriel/darcula-solid.nvim'
-- Plug 'rktjmp/lush.nvim'
-- plug 'arcticicestudio/nord-vim'
-- plug 'edeneast/nightfox.nvim'
-- plug 'ray-x/material_plus.nvim'
-- plug 'jnurmine/zenburn'
-- plug 'mhartington/oceanic-next'
-- Plug 'vim-airline/vim-airline-themes'
-- Plug 'w0ng/vim-hybrid'
-- plug 'cocopon/iceberg.vim'

-- //\\// ------------------- Status bar --------------------------- //\\//
Plug 'nvim-lualine/lualine.nvim'
Plug 'feline-nvim/feline.nvim'
-- Plug 'vim-airline/vim-airline'  -- Powerline written in vimscript

-- //\\// ------------------- Syntax highlighting --------------------------- //\\//
Plug 'nvim-treesitter/nvim-treesitter'

-- //\\// ------------------- Languages --------------------------- //\\//
Plug 'lervag/vimtex'
Plug 'plasticboy/vim-markdown'

-- //\\// ------ Languages general, LSP, snippets, code actions, linting, etc ------ //\\//
Plug 'neovim/nvim-lsp'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'onsails/lspkind-nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'L3MON4D3/LuaSnip'				-- Snippet engine written in Lua
Plug 'saadparwaiz1/cmp_luasnip'     -- Autocompleter for luasnip engine
Plug "rafamadriz/friendly-snippets" -- Some snippets
-- Plug 'SirVer/ultisnips'			-- Snippet engine written in vimscript
-- Plug "quangnguyen30192/cmp-nvim-ultisnips"	-- Autocompleter for ultisnips engine
-- Plug 'honza/vim-snippets'		-- Some snippets
-- Plug 'dense-analysis/ale'		-- Linter
Plug 'folke/trouble.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'

-- //\\// ------------------------- Dart/flutter ---------------------------- //\\//
Plug 'akinsho/flutter-tools.nvim'
-- Plug 'dart-lang/dart-vim-plugin'
-- Plug 'thosakwe/vim-flutter'
-- Plug 'natebosch/vim-lsc'
-- Plug 'natebosch/vim-lsc-dart'

-- //\\// ----------------------- Terminal within neovim --------------------- //\\//
Plug 'voldikss/vim-floaterm'
-- Plug 'akinsho/toggleterm.nvim'	--Toggle terminal within nvim

-- //\\// ------------------------- Session Managers -------------------------- //\\//
Plug 'jedrzejboczar/possession.nvim'
-- Plug 'tpope/vim-obsession'

-- //\\// ------------------------------- Utils ------------------------------- //\\//
Plug 'tjdevries/colorbuddy.vim'
Plug 'rcarriga/nvim-notify'		-- Notification manager
Plug 'jiangmiao/auto-pairs'     -- Auto close ({[]})
Plug 'tpope/vim-commentary'     -- Toggle comentaries on code
Plug 'puremourning/vimspector'	-- Debugging
Plug 'tpope/vim-fugitive'		-- Git
Plug 'junegunn/gv.vim'			-- Git commit browser
Plug 'szw/vim-maximizer'		-- Maximize a buffer temporarly (util for vimspector)
Plug "kylechui/nvim-surround"   -- Surround tool
Plug 'nvim-lua/plenary.nvim'    -- Useful lua functions to complement neovim
Plug 'godlygeek/tabular'        -- Filter and align text
Plug 'windwp/nvim-ts-autotag'   -- Auto close tags (nvim)
-- Plug 'alvan/vim-closetag'    -- Auto close tags (vim)
-- Plug 'norcalli/nvim-colorizer.lja'

vim.call('plug#end')

-- vim.cmd [[ set statusline+=%{FugitiveHead()} ]]
