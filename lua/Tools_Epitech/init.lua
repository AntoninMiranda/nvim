local EPITECH = {}

EPITECH.setup = function (opts)
  require('Tools_Epitech.config').set_defaults(opts)
end

-- THIS IS FOR TESTING PURPOSE
--[[ EPITECH.setup({
  diagnostics = { run_cmd = 'echo foo'},
  -- coding_style = { export_file = 'test.txt'}
}) ]]

return EPITECH
