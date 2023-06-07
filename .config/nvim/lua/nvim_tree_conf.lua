-- setup with all defaults
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
-- nested options are documented by accessing them with `.` (eg: `:help nvim-tree.view.mappings.list`).
--
local status_ok, nvim_tree = pcall(require, "nvim-tree")

if not status_ok then
	return
end

nvim_tree.setup {
	modified = {
		enable = true,
		show_on_dirs = true,
		show_on_open_dirs = true,
	},
} -- END_DEFAULT_OPTS
