local function map(mode, shortcut, command)
		vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true })
end

local function nmap(shortcut, command)
		map('n', shortcut, command)
end

local function imap(shortcut, command)
		map('i', shortcut, command)
end

-- //\\// Browsing and Searching inside a file//\\//
nmap("n", "nzz")
nmap("N", "Nzz")
nmap("/", ":set hlsearch<CR>/")
nmap("?", ":set hlsearch<CR>?")
nmap("#", ":set hlsearch<CR>#")
nmap("*", ":set hlsearch<CR>*")

imap("<C-Space>", "<C-X><C-O>")

-- //\\// File management //\\//
nmap("<leader>e", ":NvimTreeToggle<CR>")

-- //\\// 3-way split to solve merge conflicts //\\//
nmap("<leader>sm", ":Gvdiffsplit!<CR>")
-- nmap("J", "7j")
-- nmap("K", "7k")

-- //\\// Toggle splits //\\//
nmap("//", ":vs<CR>")
nmap("--", ":sp<CR>")

-- //\\// Toggle Terminal //\\//
nmap ("<leader>te", "<cmd>terminal<CR>")

-- nmap("<leader>rc", ":e ~/.config/nvim/init.vim<CR>")
-- nmap("<leader>rl", ":so ~/.config/nvim/init.lua<CR>")

-- //\\// Plugins management //\\//
nmap("<leader>pi", ":PlugInstall<CR>")
nmap("<leader>pu", ":PlugUpdate<CR>")
nmap("<leader>pc", ":PlugClean<CR>")

nmap("<C-S>", ":update<CR>")
-- nmap("<leader>wq", ":wq<CR>")
-- nmap("<leader>q", ":q<CR>")

nmap("<leader>at", ":ALEToggle<CR>")

-- //\\// Toggle Vim-Fugitive//\\//
nmap("<leader>gg", ":G<CR>")

nmap("<leader>hh", ":set hlsearch!<CR>")
nmap("<leader>ss", ":mks! .session.vim<CR>")
nmap("<leader>ds", ":Pydocstring<CR>")
nmap("<leader>tr", ":Telescope resume<CR>")

-- //\\// Toggle Git-Graph//\\//
nmap("<leader>gl", ":GV --all<CR>")

-- //\\// Toggle TroubleToggle//\\//
nmap("<leader>xx", "<cmd>TroubleToggle<cr>") 

-- //\\// Toggle FuzzyFinder for cwd//\\//
nmap("<leader>ff", ":FZF<CR>")

-- //\\// Toggle Toggle Telescope//\\//
nmap("<leader>fg", ":Telescope live_grep<CR>")
nmap("<leader>fb", ":Telescope buffers<CR>")
nmap("<leader>fh", ":Telescope help_tags<CR>")
nmap("<leader>gb", ":Telescope git_branches<CR>")
nmap("<leader>fc", ":Telescope flutter commands<CR>")
