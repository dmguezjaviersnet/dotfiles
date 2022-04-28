local cmd = vim.cmd

-- Airline
-- vim.g.airline_powerline_fonts = 1
-- vim.g.airline_theme = "bubblegum"
-- cmd [[ let g:airline#extensions#tabline#enabled = 0 ]]

-- FZF
vim.g.fzf_layout = { window = { width = 0.8, height = 0.8 } }

-- Telescope
require('telescope').setup{ defaults = { file_ignore_patterns = {".git"} } }

-- Trouble
require("trouble").setup {}

-- ALE
cmd [[ autocmd FileType python :normal zR ]]
vim.g.ale_linters = { python = { "pylint" } }
vim.g.ale_fixers = { python = { "black" } }
vim.g.ale_python_executable = "python3"
vim.g.ale_python_pylint_use_global = 1
cmd [[ highlight ALEWarning ctermfg=none cterm=underline ]]
cmd [[ highlight ALEErrorSign ctermbg=none ]]
cmd [[ highlight ALEWarningSign ctermbg=none ]]
cmd [[ let g:ale_pattern_options = { '.*tests/.*' : { 'ale_enabled' : 0 } } ]]

-- Vimtex
cmd [[ autocmd FileType tex map <F5> :call vimtex#compiler#start()<CR> ]]
cmd [[ autocmd FileType tex map <F6> :call vimtex#compiler#stop()<CR> ]]

-- Markdown
vim.g.vim_markdown_conceal = 2
vim.g.vim_markdown_conceal_code_blocks = 0
vim.g.vim_markdown_math = 1
vim.g.vim_markdown_toml_frontmatter = 1
vim.g.vim_markdown_frontmatter = 1
vim.g.vim_markdown_strikethrough = 1
vim.g.vim_markdown_autowrite = 1
vim.g.vim_markdown_follow_anchor = 1
cmd [[ autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown ]]
cmd [[ autocmd FileType markdown set conceallevel=0 ]]
cmd [[ autocmd FileType markdown :normal zR ]]

-- Pyright
cmd [[autocmd FileType python map <F5> :!python %<CR>]]
