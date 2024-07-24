local utils = require("new-file-template.utils")

local function base_template(full_path, filename)
  local pack = full_path:match("src/main/java/(.+)$"):gsub("/", ".")
  local name = filename:gsub("%..+$", "")
  local entity_type = name:sub(1, 1) == "I" and name:sub(2, 2):match("%u") and "interface" or "class"

  if not pack then
    pack = ""
  end

  return [[
package ]] .. pack .. [[;\n
public ]] .. entity_type .. [[ ]] .. name .. [[ {\n|cursor|\n}]]
end

--- @param opts table
---   A table containing the following fields:
---   - `full_path` (string): The full path of the new file, e.g., "lua/new-file-template/templates/init.lua".
---   - `relative_path` (string): The relative path of the new file, e.g., "lua/new-file-template/templates/init.lua".
---   - `filename` (string): The filename of the new file, e.g., "init.lua".
return function(opts)
  local template = {
    { pattern = ".*", content = base_template },
  }

  return utils.find_entry(template, opts)
end
