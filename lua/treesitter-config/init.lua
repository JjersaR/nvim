require'nvim-treesitter.configs'.setup {
  ensure_installed = {"lua", "vim", "python", "cpp", "c", "java", "c_sharp", "html", "css", "javascript", "typescript", "vue", "json", "perl", "php", "scss", "graphql", "markdown", "yaml"},
  sync_install = false, 
  ignore_install = { "" }, 
  highlight = {
    enable = true,      
    disable = {},
    additional_vim_regex_highlighting = false,
  },
  autopairs = {
    enable = true
  }
}

