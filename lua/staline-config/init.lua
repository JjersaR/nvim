local staline = require('staline')
local percentage = function()
  local current_line = vim.fn.line(".")
  local total_lines = vim.fn.line("$")
  local chars = {
    "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██"
  }
  local line_ratio = current_line / total_lines
  local index = math.ceil(line_ratio * #chars)
  return chars[index]
end
local time = function()
  return os.date("%a │ %H:%M %x")
end
local my_colors = {n = "#9CCFD8", i = "#9CCFD8", c = "#9CCFD8", v = "#9CCFD8", t = "#9CCFD8"}
staline.setup {
  sections = {
    left = {
      'mode', {'StalineBranch', 'file_name', 'branch'},
    },
    mid = {'lsp'},
    right = {' ','lsp_name', '  ', percentage}
  },
  defaults = {
    true_colors = true, -- LSP highlighing
    font_active = "none",
    branch_symbol = " ", -- branch symbol
    mod_symbol = "  " -- modified symbol
  },
  mode_icons = {
    ['n'] = ' ',
    ['no'] = ' ',
    ['nov'] = ' ',
    ['noV'] = ' ',
    ['niI'] = ' ',
    ['niR'] = ' ',
    ['niV'] = ' ',
    ['i'] = ' ',
    ['ic'] = ' ',
    ['ix'] = ' ',
    ['s'] = ' ',
    ['S'] = ' ',
    ['v'] = ' ',
    ['V'] = ' ',
    [''] = ' ',
    ['r'] = ' ',
    ['r?'] = ' ',
    ['R'] = ' ',
    ['c'] = 'גּ ',
    ['t'] = ' '
  },
  mode_colors = my_colors, -- Change mode colors
  special_table = {
    NvimTree = {'File Explorer', ' '},
    packer = {'Packer', ' '},
    TelescopePrompt = {'Telescope', ' '}
  },
  lsp_symbols = {Error = " ", Info = " ", Warn = " ", Hint = " "}
}
vim.cmd [[hi StalineBranch guifg=#C4A7E7]]
vim.cmd [[hi StalineName guifg=#EBBCBA]]
