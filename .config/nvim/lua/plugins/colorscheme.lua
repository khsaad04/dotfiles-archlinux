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
                    dark0_hard = "#13140d",
                },
            })

            local custom_gruvbox = require("lualine.themes.gruvbox")
            custom_gruvbox = {
                normal = {
                    a = {
                        bg = "#c2cd7c",
                        fg = "#2d3400",
                        gui = "bold",
                    },
                    b = {
                        bg = "#2a2b22",
                        fg = "#e4e3d6",
                    },
                    c = { bg = "#1f2018", fg = "#e4e3d6" },
                },
                insert = {
                    a = {
                        bg = "#a2d0c2",
                        fg = "#06372e",
                        gui = "bold",
                    },
                    b = {
                        bg = "#2a2b22",
                        fg = "#e4e3d6",
                    },
                    c = { bg = "#1f2018", fg = "#e4e3d6" },
                },
                visual = {
                    a = {
                        bg = "#c6c9a7",
                        fg = "#2f321a",
                        gui = "bold",
                    },
                    b = {
                        bg = "#2a2b22",
                        fg = "#e4e3d6",
                    },
                    c = { bg = "#1f2018", fg = "#e4e3d6" },
                },
                replace = {
                    a = {
                        bg = "#ffb4ab",
                        fg = "#690005",
                        gui = "bold",
                    },
                    b = {
                        bg = "#2a2b22",
                        fg = "#e4e3d6",
                    },
                    c = { bg = "#1f2018", fg = "#e4e3d6" },
                },
                command = {
                    a = {
                        bg = "#c2cd7c",
                        fg = "#2d3400",
                        gui = "bold",
                    },
                    b = {
                        bg = "#2a2b22",
                        fg = "#e4e3d6",
                    },
                    c = { bg = "#1f2018", fg = "#e4e3d6" },
                },
                inactive = {
                    a = {
                        bg = "#2a2b22",
                        fg = "#e4e3d6",
                        gui = "bold",
                    },
                    b = {
                        bg = "#2a2b22",
                        fg = "#e4e3d6",
                    },
                    c = { bg = "#1f2018", fg = "#e4e3d6" },
                },
            }
            custom_gruvbox.normal.c.bg = "#1f2018"
            custom_gruvbox.normal.c.fg = "#e4e3d6"

            require("lualine").setup({
                options = { theme = custom_gruvbox },
            })
            vim.cmd.colorscheme("gruvbox")
        end,
    },
}
