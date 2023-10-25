local colors = require("ayu.colors")

local mirage = true

require("ayu").setup({
    mirage = mirage,
    overrides = {
        NormalFloat = { bg = colors.panel_bg },
    },
})

lvim.colorscheme = "ayu"

colors.generate(mirage) -- pass `true` to enable mirage

local M = {
    colors = colors,
}
-- lua print(vim.inspect(require('ayu.colors'))) all colors
-- source $VIMRUNTIME/syntax/hitest.vim see all highlight groups

return M
