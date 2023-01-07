local cmd = vim.cmd

-- Dart
cmd [[ autocmd FileType dart setlocal softtabstop=2 ]]
cmd [[ autocmd FileType dart setlocal shiftwidth=2 ]]

-- Lua
cmd [[ autocmd FileType lua setlocal softtabstop=2 ]]
cmd [[ autocmd FileType lua setlocal shiftwidth=2 ]]

-- Python
cmd [[ autocmd FileType python map <F5> :!python %<CR> ]]

-- JSON
cmd [[ autocmd FileType json TSDisable highlight ]]

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
