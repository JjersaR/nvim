require'nvim-treesitter.configs'.setup {
  ensure_installed = {"lua", "vim", "python", "cpp", "c", "java", "c_sharp", "html", "css"},
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
