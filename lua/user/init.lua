require('user.options')
require('user.plugins')
require('user.colorsheme')
require('user.keymaps')
require('user.autoclose').setup({})
require('user.cmp')
require('user.telescope')
require("commentary").setup({
  use_default_mappings = false
})
require('user.toggleterm')
require('user.neogit')
require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})
require('user.trouble')
