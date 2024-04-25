local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
	[[                                                   ]],
	[[                                              ___  ]],
	[[                                           ,o88888 ]],
	[[                                        ,o8888888' ]],
	[[                  ,:o:o:oooo.        ,8O88Pd8888"  ]],
	[[              ,.::.::o:ooooOoOoO. ,oO8O8Pd888'"    ]],
	[[            ,.:.::o:ooOoOoOO8O8OOo.8OOPd8O8O"      ]],
	[[           , ..:.::o:ooOoOOOO8OOOOo.FdO8O8"        ]],
	[[          , ..:.::o:ooOoOO8O888O8O,COCOO"          ]],
	[[         , . ..:.::o:ooOoOOOO8OOOOCOCO"            ]],
	[[          . ..:.::o:ooOoOoOO8O8OCCCC"o             ]],
	[[             . ..:.::o:ooooOoCoCCC"o:o             ]],
	[[             . ..:.::o:o:,cooooCo"oo:o:            ]],
	[[          `   . . ..:.:cocoooo"'o:o:::'            ]],
	[[          .`   . ..::ccccoc"'o:o:o:::'             ]],
	[[         :.:.    ,c:cccc"':.:.:.:.:.'              ]],
	[[       ..:.:"'`::::c:"'..:.:.:.:.:.'               ]],
	[[     ...:.'.:.::::"'    . . . . .'                 ]],
	[[    .. . ....:."' `   .  . . ''                    ]],
	[[  . . . ...."'                                     ]],
	[[  .. . ."'                                         ]],
	[[ .                                                 ]],
	[[                                                   ]],
}

-- Set menu
dashboard.section.buttons.val = {
	dashboard.button("m", "  Find File", ":Telescope find_files<CR>"),
	dashboard.button("t", "🌳 Files", ":Triptych<CR>"),
	dashboard.button(
		"e",
		"🔎 Search by name",
		"<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ')})<CR>"
	),
	dashboard.button("r", "  Recent files", ":lua require'telescope.builtin'.oldfiles{}<CR>", {}),
	dashboard.button("p", "✅ LazySync", ":Lazy sync<CR>"),
	dashboard.button("s", "⚙️  Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
	dashboard.button("q", "🛑 Quit NVIM", ":qa<CR>"),
}

alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
