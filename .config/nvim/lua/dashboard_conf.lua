local home = os.getenv('HOME')
local db = require('dashboard')

db.setup {
	config = {
		default_banner = {
			'',
			'',
			' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
			' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
			' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
			' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
			' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
			' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
			'',
			'                                   v0.7.2                                       ',
			'',
			'An open-source text editor currently in development and aiming for the future ;)',
		},
		preview_file_height = 11,
		preview_file_width = 70,
		custom_center = {
			{
				icon = '  ',
				desc = 'Recently latest session                 ',
				shortcut = 'SPC s l',
				action = 'SessionLoad'
			},
			{
				icon = '  ',
				desc = 'Recently opened files                   ',
				action = 'Telescope oldfiles',
				shortcut = 'SPC f r'
			},
			{
				icon = '  ',
				desc = 'Find  File                              ',
				action = 'FZF',
				shortcut = 'SPC f f'
			},
			{
				icon = '  ',
				desc = 'File Browser                            ',
				action = 'NvimTreeToggle',
				shortcut = 'SPC f e'
			},
			{
				icon = '  ',
				desc = 'Find  word                              ',
				action = 'Telescope live_grep',
				shortcut = 'SPC f w'
			},
			{
				icon = '  ',
				desc = 'Open nvim dotfiles                      ',
				action = 'e ~/.config/nvim/',
				shortcut = 'SPC f d'
			},
		}
	}
}
