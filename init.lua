-- acelerar tiempos de neovim
local _impatient, impatient = pcall(require, "impatient")

if _impatient then
  impatient.enable_profile()
end

require('jersa')
