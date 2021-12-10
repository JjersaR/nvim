local saga = require 'lspsaga'
--saga.init_lsp_saga()
saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  code_action_icon = ' ',
  border_style = "round",
  dianostic_header_icon = '   ',
  use_saga_diagnostic_sign = true,
}
