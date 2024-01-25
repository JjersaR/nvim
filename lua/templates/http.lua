local utils = require("new-file-template.utils")

local function base_template()
  return [[
# Obtener
GET http://localhost:8080/

# Update
POST http://localhost:8080/
Content-Type: application/json

{

}

# Borrar
DELETE http://localhost:8080/]]
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
