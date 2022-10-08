local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
-- Plugin outside ~/.vim/plugged with post-update hook
Plug 'nvim-lua/plenary.nvim'
Plug 'godlygeek/tabular'

-- //\\// Dashboard //\\//
Plug 'glepnir/dashboard-nvim'

-- //\\// Navegation //\\//
Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/fzf'
Plug 'kyazdani42/nvim-tree.lua'
-- Plug 'preservim/nerdtree'

-- //\\// Themes and icons //\\//
Plug 'kyazdani42/nvim-web-devicons'
Plug 'EdenEast/nightfox.nvim'
Plug 'doums/darcula'
Plug 'folke/tokyonight.nvim'
-- Plug 'briones-gabriel/darcula-solid.nvim'
-- Plug 'rktjmp/lush.nvim'
Plug 'rebelot/kanagawa.nvim'
Plug 'rmehri01/onenord.nvim'
Plug 'Th3Whit3Wolf/onebuddy'
Plug 'shaunsingh/moonlight.nvim'
-- plug 'arcticicestudio/nord-vim'
-- plug 'edeneast/nightfox.nvim'
-- plug 'ray-x/material_plus.nvim'
-- plug 'jnurmine/zenburn'
-- plug 'mhartington/oceanic-next'
-- Plug 'vim-airline/vim-airline-themes'
-- Plug 'w0ng/vim-hybrid'
-- plug 'cocopon/iceberg.vim'
--
-- //\\// Status bar //\\//
Plug 'nvim-lualine/lualine.nvim'
-- Plug 'vim-airline/vim-airline'  -- Powerline written in vimscript

-- //\\/ Syntax highlighting //\\//
Plug 'nvim-treesitter/nvim-treesitter'

-- //\\// Languages //\\//
Plug 'lervag/vimtex'
Plug 'plasticboy/vim-markdown'

-- //\\// Languages general, LSP, snippets, code actions, linting, etc //\\//
Plug 'neovim/nvim-lsp'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'onsails/lspkind-nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'SirVer/ultisnips'			-- Snippet engine written in vimscript
Plug "quangnguyen30192/cmp-nvim-ultisnips" --Autocompleter for ultisnips
Plug 'thomasfaingnaert/vim-lsp-ultisnips' -- LSP snippets integration for SirVer ultisnip
-- Plug "rafamadriz/friendly-snippets" -- Some snippets
-- Plug 'L3MON4D3/LuaSnip' -- Snippet engine written in Lua
Plug 'honza/vim-snippets'		-- Some snippets
-- Plug 'dense-analysis/ale'		-- Linter
Plug 'folke/trouble.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'

-- //\\// Dart flutter //\\//
-- Plug 'dart-lang/dart-vim-plugin'
-- Plug 'thosakwe/vim-flutter'
Plug 'akinsho/flutter-tools.nvim'
-- Plug 'natebosch/vim-lsc'
-- Plug 'natebosch/vim-lsc-dart'

-- //\\// Utils //\\//
Plug 'akinsho/toggleterm.nvim'	--Toggle terminal within nvim
Plug 'rcarriga/nvim-notify'		-- Notification manager
Plug 'jiangmiao/auto-pairs'     -- Auto close ({[]})
Plug 'tpope/vim-commentary'     -- Toggle comentaries on code
Plug 'puremourning/vimspector'	-- Debugging
Plug 'tpope/vim-fugitive'		-- Git
Plug 'junegunn/gv.vim'
Plug 'szw/vim-maximizer'		-- Maximize a buffer temporarly (util for vimspector)
Plug "kylechui/nvim-surround"   -- Surround tool
-- Plug 'norcalli/nvim-colorizer.lja'
-- Plug 'alvan/vim-closetag'    -- Auto close tags (vim)
Plug 'windwp/nvim-ts-autotag' -- Auto close tags (nvim)

-- Initialize plugin system
vim.call('plug#end')

-- vim.cmd [[ set statusline+=%{FugitiveHead()} ]]
