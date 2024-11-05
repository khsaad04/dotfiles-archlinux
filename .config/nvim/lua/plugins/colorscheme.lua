return {
    {
        "ellisonleao/gruvbox.nvim",
        dependencies = { "nvim-lualine/lualine.nvim" },
        lazy = false,
        priority = 1000,
        config = function()
            require("gruvbox").setup({
                contrast = "hard",
                palette_overrides = {
                    dark0_hard = "#121318",
                },
            })

            local custom_gruvbox = require("lualine.themes.gruvbox")
            custom_gruvbox = {
                normal = {
                    a = {
                        bg = "#b2c5ff",
                        fg = "#182e60",
                        gui = "bold",
                    },
                    b = {
                        bg = "#282a2f",
                        fg = "#e3e2e9",
                    },
                    c = { bg = "#1e1f25", fg = "#e3e2e9" },
                },
                insert = {
                    a = {
                        bg = "#e1bbdc",
                        fg = "#422741",
                        gui = "bold",
                    },
                    b = {
                        bg = "#282a2f",
                        fg = "#e3e2e9",
                    },
                    c = { bg = "#1e1f25", fg = "#e3e2e9" },
                },
                visual = {
                    a = {
                        bg = "#c0c6dd",
                        fg = "#2a3042",
                        gui = "bold",
                    },
                    b = {
                        bg = "#282a2f",
                        fg = "#e3e2e9",
                    },
                    c = { bg = "#1e1f25", fg = "#e3e2e9" },
                },
                replace = {
                    a = {
                        bg = "#ffb4ab",
                        fg = "#690005",
                        gui = "bold",
                    },
                    b = {
                        bg = "#282a2f",
                        fg = "#e3e2e9",
                    },
                    c = { bg = "#1e1f25", fg = "#e3e2e9" },
                },
                command = {
                    a = {
                        bg = "#b2c5ff",
                        fg = "#182e60",
                        gui = "bold",
                    },
                    b = {
                        bg = "#282a2f",
                        fg = "#e3e2e9",
                    },
                    c = { bg = "#1e1f25", fg = "#e3e2e9" },
                },
                inactive = {
                    a = {
                        bg = "#282a2f",
                        fg = "#e3e2e9",
                        gui = "bold",
                    },
                    b = {
                        bg = "#282a2f",
                        fg = "#e3e2e9",
                    },
                    c = { bg = "#1e1f25", fg = "#e3e2e9" },
                },
            }
            custom_gruvbox.normal.c.bg = "#1e1f25"
            custom_gruvbox.normal.c.fg = "#e3e2e9"

            require("lualine").setup({
                options = { theme = custom_gruvbox },
            })
            vim.cmd.colorscheme("gruvbox")
        end,
    },
}
