vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_header = {

    [[]], [[]], [[]],
    [[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
    [[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
    [[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
    [[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
    [[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
    [[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
    [[]], [[]], [[]], [[]], [[]], [[]], [[]], [[]]
}

vim.g.dashboard_custom_section = {

    a = {
        description = {'  Find File          '},
        command = 'Telescope find_files'
    },
    e = {
        description = {'  Search Text        '},
        command = 'Telescope live_grep'
    },
    b = {
        description = {'  Recent Files       '},
        command = 'Telescope oldfiles'
    },
    c = {description = {'  New File           '}, command = 'NvimTreeOpen'},
    d = {description = {'  File Browser       '}, command = 'RnvimrToggle'},
    f = {
        description = {'  Config             '},
        command = 'edit ~/.config/nvim/init.lua'
    },
    g = {description = {'ﮮ  Update Plugin      '}, command = 'PackerUpdate'},
    h = {description = {'  Exit               '}, command = 'q'}
}

vim.g.dashboard_custom_footer = {
    [[]], [[]], [[]], [[]], [[]], [[]], [[]], [[]], [[]], [[]],
    'Hola. bienvenido.'
}
