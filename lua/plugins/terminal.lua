return {
  "akinsho/toggleterm.nvim",
  lazy = false,
  config = function()
    require("toggleterm").setup({
      size = 20, -- Tamaño inicial del terminal
      open_mapping = [[<Leader>;f]], -- Mapeo para abrir/ocultar la terminal
      hide_numbers = true, -- Oculta los números de línea
      shade_terminals = true, -- Sombrea el fondo de la terminal
      shading_factor = 2, -- Nivel de sombreado
      direction = "float", -- Tipo de terminal: "vertical" | "horizontal" | "float"
      float_opts = {
        border = "curved", -- Estilo del borde flotante
      },
    })
  end,
}
