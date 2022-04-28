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
Plug 'doums/darcula'
-- plug 'arcticicestudio/nord-vim'
-- plug 'edeneast/nightfox.nvim'
-- plug 'ray-x/material_plus.nvim'
-- plug 'jnurmine/zenburn'
-- plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0ng/vim-hybrid'
-- plug 'cocopon/iceberg.vim'

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
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'     -- Toggle comentaries on code
Plug 'vim-airline/vim-airline'  -- Powerline
Plug 'SirVer/ultisnips'			-- Some snippets
Plug 'puremourning/vimspector'	-- Debugging
Plug 'tpope/vim-fugitive'		-- Git
Plug 'junegunn/gv.vim'
Plug 'szw/vim-maximizer'		-- Maximize a buffer temporarly (util for vimspector)
Plug 'norcalli/nvim-colorizer.lua'

-- Initialize plugin system
vim.call('plug#end')

-- vim.cmd [[ set statusline+=%{FugitiveHead()} ]]
