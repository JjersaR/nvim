require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "cpp", "lua", "rust", "java", "bash", "python", "css", "html", "javascript", "sql", "scala", "toml", "meson", "dockerfile", "htmldjango" },
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
