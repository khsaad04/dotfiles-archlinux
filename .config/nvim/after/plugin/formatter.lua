local util = require "formatter.util"

require("formatter").setup {
    filetype = {
        lua = {
            require("formatter.filetypes.lua").stylua,
        },
    }
}
