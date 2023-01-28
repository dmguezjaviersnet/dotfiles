local home = os.getenv('HOME')
local db = require('dashboard')

db.default_banner = {
	'',
	'',
	' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
	' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
	' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
	' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
	' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
	' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
	'',
	'                                   v0.8.2                                       ',
	'',
	'An open-source text editor currently in development and aiming for the future ;)',
}

db.preview_file_height = 11
db.preview_file_width = 70
db.custom_center = {
	{ icon = '  ',
		desc = 'Recently latest session                 ',
		shortcut = 'SPC l s',
		action = 'Telescope possession list' },
	{ icon = '  ',
		desc = 'Recently opened files                   ',
		action = 'Telescope oldfiles',
		shortcut = 'SPC f r' },
	{ icon = '  ',
		desc = 'Find  File                              ',
		action = 'FZF',
		shortcut = 'SPC f f' },
	{ icon = '  ',
		desc = 'File Browser                            ',
		action = 'NvimTreeToggle',
		shortcut = 'SPC f e' },
	{ icon = '  ',
		desc = 'Find  word                              ',
		action = 'Telescope live_grep',
		shortcut = 'SPC f w' },
	{ icon = '  ',
		desc = 'Open nvim dotfiles                      ',
		action = 'e ~/.config/nvim/',
		shortcut = 'SPC f d' },
}
