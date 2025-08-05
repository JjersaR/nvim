local utils = require("new-file-template.utils")

-- Genera el paquete basado en el path del archivo
local function get_package(full_path)
  local pack = full_path:match("src/main/java/(.+)$")
  return pack and pack:gsub("/", ".") or ""
end

-- Genera el nombre de la clase sin extensión
local function get_class_name(filename)
  return vim.fn.fnamemodify(filename, ":t:r")
end

-- Plantilla para Controladores
local function controller_template(full_path, filename)
  local class_name = get_class_name(filename)
  local package = get_package(full_path)
  -- Remover "Controller" del nombre para el request mapping
  local api_name = class_name:gsub("Controller$", ""):lower()

  return [[
package ]] .. package .. [[;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/]] .. api_name .. [[")
public class ]] .. class_name .. [[ {

  private final |cursor|;

}]]
end

-- Plantilla para Servicios
local function service_template(full_path, filename)
  local class_name = get_class_name(filename)
  local package = get_package(full_path)

  return [[
package ]] .. package .. [[;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ]] .. class_name .. [[ {

  private final |cursor|;
}]]
end

-- Plantilla para Repositorios
local function repository_template(full_path, filename)
  local class_name = get_class_name(filename)
  local package = get_package(full_path)

  return [[
package ]] .. package .. [[;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ]] .. class_name .. [[ extends JpaRepository<|cursor|, Long> {


}]]
end

-- Plantilla base para otros archivos .java
local function base_template(full_path, filename)
  local class_name = get_class_name(filename)
  local package = get_package(full_path)
  local entity_type = class_name:sub(1, 1) == "I" and class_name:sub(2, 2):match("%u") and "interface" or "class"

  return [[
package ]] .. package .. [[;

public ]] .. entity_type .. [[ ]] .. class_name .. [[ {
  |cursor|
}]]
end

--- @param opts table
---   - `full_path` (string): Ruta completa del archivo.
---   - `relative_path` (string): Ruta relativa del archivo.
---   - `filename` (string): Nombre del archivo.
return function(opts)
  local template = {
    { pattern = ".*Controller%.java", content = controller_template },
    { pattern = ".*Service%.java", content = service_template },
    { pattern = ".*Repository%.java", content = repository_template },
    { pattern = ".*%.java", content = base_template },
  }

  return utils.find_entry(template, opts)
end
