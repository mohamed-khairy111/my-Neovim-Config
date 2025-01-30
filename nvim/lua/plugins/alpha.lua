return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- Custom header
        dashboard.section.header.val = {
            [[                                                                       ]],
            [[  ██████   █████                   █████   █████  ███                  ]],
            [[ ░░██████ ░░███                   ░░███   ░░███  ░░░                   ]],
            [[  ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████   ]],
            [[  ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███  ]],
            [[  ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███  ]],
            [[  ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███  ]],
            [[  █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████ ]],
            [[ ░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░  ]],
            [[                                                                       ]],
            [[                     λ it be like that sometimes λ                     ]],
        }

        dashboard.section.header.opts.hl = "AlphaHeader"

        -- Dashboard buttons
        dashboard.section.buttons.val = {
            dashboard.button(
                "f",
                "  Find File",
                ":Telescope find_files <CR>"
            ),
            dashboard.button("r", "  Recent", ":Telescope oldfiles <CR>"),
            dashboard.button("n", "  New File", ":ene | startinsert <CR>"),
            dashboard.button("q", "  Quit", ":qa<CR>"),
        }

        -- Footer

        -- Apply settings
        alpha.setup(dashboard.opts)
    end,
}
