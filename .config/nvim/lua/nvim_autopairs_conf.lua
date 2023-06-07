local status_ok, autopairs = pcall(require, 'nvim-autopairs')

if not status_ok then
	return
end

status_ok, Rule = pcall(require, 'nvim-autopairs.rule')

if not status_ok then
	return
end

autopairs.setup {
	disable_filetype = { 'TelescopePrompt', 'vim' }
}

autopairs.add_rules({
	Rule("<", ">", { "cs" })
})
