local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
-- Plugin outside ~/.vim/plugged with post-update hook
Plug 'nvim-lua/plenary.nvim'
Plug 'godlygeek/tabular'

-- Navegation
Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/fzf'
-- Plug 'preservim/nerdtree'

-- Themes
Plug 'EdenEast/nightfox.nvim'
Plug 'doums/darcula'
Plug 'briones-gabriel/darcula-solid.nvim'
Plug 'rktjmp/lush.nvim'
-- plug 'arcticicestudio/nord-vim'
-- plug 'edeneast/nightfox.nvim'
-- plug 'ray-x/material_plus.nvim'
-- plug 'jnurmine/zenburn'
-- plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0ng/vim-hybrid'
-- plug 'cocopon/iceberg.vim'

--Syntax highlighting 
Plug 'nvim-treesitter/nvim-treesitter'

-- Languages
Plug 'lervag/vimtex'
Plug 'plasticboy/vim-markdown'

-- Languages general
Plug 'neovim/nvim-lsp'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'onsails/lspkind-nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug "quangnguyen30192/cmp-nvim-ultisnips"
Plug 'thomasfaingnaert/vim-lsp-ultisnips' -- LSP snippets integration for SirVer ultisnip
Plug "rafamadriz/friendly-snippets" -- Some snippets
Plug 'L3MON4D3/LuaSnip' -- Snippet engine written in Lua
Plug 'SirVer/ultisnips'			-- Snippet engine written in vimscript
Plug 'honza/vim-snippets'		-- Some snippets
Plug 'dense-analysis/ale'		-- Linter
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'

-- Dart Flutter
-- Plug 'dart-lang/dart-vim-plugin'
-- Plug 'thosakwe/vim-flutter'
Plug 'akinsho/flutter-tools.nvim'
-- Plug 'natebosch/vim-lsc'
-- Plug 'natebosch/vim-lsc-dart'

-- Utilf
Plug 'akinsho/toggleterm.nvim'
Plug 'jiangmiao/auto-pairs'     -- Auto close ({[]})
Plug 'tpope/vim-commentary'     -- Toggle comentaries on code
Plug 'vim-airline/vim-airline'  -- Powerline
Plug 'puremourning/vimspector'	-- Debugging
Plug 'tpope/vim-fugitive'		-- Git
Plug 'junegunn/gv.vim'
Plug 'szw/vim-maximizer'		-- Maximize a buffer temporarly (util for vimspector)
Plug 'norcalli/nvim-colorizer.lua'
Plug 'alvan/vim-closetag' -- Auto close tags

-- Initialize plugin system
vim.call('plug#end')

-- vim.cmd [[ set statusline+=%{FugitiveHead()} ]]
