local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

--para c, c++ y de más
require'lspconfig'.clangd.setup{
  capabilities = capabilities,
}

-- para python
require'lspconfig'.pyright.setup{
  capabilities = capabilities,
}

--css
require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}

-- emmet html y css
require'lspconfig'.emmet_ls.setup{
  capabilities = capabilities,
}

--tsserver
require'lspconfig'.tsserver.setup{
  capabilities = capabilities,
}

--lua
local system_name
if vim.fn.has("mac") == 1 then
  system_name = "macOS"
elseif vim.fn.has("unix") == 1 then
  system_name = "Linux"
elseif vim.fn.has('win32') == 1 then
  system_name = "Windows"
else
  print("Unsupported system for sumneko")
end

local sumneko_root_path = '/home/r/Descargas/lua-language-server'
local sumneko_binary = sumneko_root_path .. "/bin/" .. system_name .. "/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.sumneko_lua.setup {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

--java
require'lspconfig'.jdtls.setup{
  capabilities = capabilities,
  cmd = { 'jdtls' }
}

--angular
require'lspconfig'.angularls.setup{
  capabilities = capabilities,
}

--sql
require'lspconfig'.sqlls.setup{
  capabilities = capabilities
}

--vuels
require'lspconfig'.vuels.setup{
  capabilities = capabilities
}

-- sintaxis de html
require'lspconfig'.html.setup {
  capabilities = capabilities,
}

-- scala
require'lspconfig'.metals.setup{
  capabilities = capabilities,
}

-- bash
require'lspconfig'.bashls.setup{
  capabilities = capabilities,
}

-- rust
require'lspconfig'.rls.setup{
  capabilities = capabilities,
}
