local status_ok, null_ls = pcall(require, 'null-ls')

if not status_ok then
  return
end

null_ls.setup ({
  default_timeout = 20000,
  fallback_severity = vim.diagnostic.severity.INFO,
  sources = {
	-- //\\// Python //\\//
	-- null_ls.builtins.diagnostics.pylint,
	-- null_ls.builtins.diagnostics.mypy,
	null_ls.builtins.formatting.black,
	null_ls.builtins.formatting.isort.with({
		args = { "--stdout", "--filename", "$FILENAME", "-" , "--profile", "black"}
	  }),

	-- //\\// Dart //\\//
	null_ls.builtins.formatting.dart_format
  }
})
