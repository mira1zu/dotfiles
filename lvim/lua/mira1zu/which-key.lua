local which_key = require("which-key")

lvim.builtin.which_key.on_config_done = function()
    which_key.register({
        f = {
            function()
                vim.lsp.buf.format()
            end,
            "Format file"
        },
        g = {
            g = {
                function()
                    require("mira1zu.toggleterm").lazygit_toggle()
                end,
                "Lazygit"
            }
        },
        S = {
            function()
                vim.cmd(":SymbolsOutline")
            end,
            "Symbols Outline"
        },
        v = {
            c = {
                ":cd %:p:h<CR>:pwd<CR>",
                "Set directory as the working"
            },
            -- It is preferable to get used to builtin shortcuts
            -- h = {
            --     ":split<CR>",
            --     "Horizontal split"
            -- },
            -- v = {
            --     ":vsplit<CR>",
            --     "Vertical split"
            -- },
            "Vim"
        }
    }, { prefix = "<leader>" })
end
