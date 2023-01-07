if vim.g.snippets == 'luasnip' then
  return
end

require("luasnip.loaders.from_vscode").lazy_load()
local ls = pcall(require, 'luasnip')
local types = pcall(require, 'luasnip.util.types')

if not ls or types then
  return
end

-- vim.keymap.set({"i", "s"},  "<c-l>", function ()
--   if ls.expand_or_jumpable() then
-- 	ls.expand_or_jump()
--   end
-- end, {silent = true})

ls.config.set_config {
  history = true,
  updateevents = "TextChanged, TextChangedI",
  autosnippets = true,
}
