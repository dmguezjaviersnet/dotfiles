require('nvim-ts-autotag').setup({
	filetypes = {
		'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx',
		'rescript',
		'xml',
		'php',
		'markdown',
		'glimmer', 'handlebars', 'hbs'
	},
	skip_tags = {
		'area', 'base', 'br', 'col', 'command', 'embed', 'hr', 'img', 'slot',
		'input', 'keygen', 'link', 'meta', 'param', 'source', 'track', 'wbr', 'menuitem'
	}
})
