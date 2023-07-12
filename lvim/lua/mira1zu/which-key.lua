local which_key = require("which-key")

vim.opt.timeout = true
vim.opt.timeoutlen = 200 -- for some unknown reason, whichkey modal timeout depends on vim's timeoutlen

-- lvim.builtin.which_key.mappings.p = {}

lvim.builtin.which_key.on_config_done = function()
    -- which_key.register({
    --     p = {
    --         "<CMD>Telescope project<CR>",
    --         "Projects"
    --     }
    -- }, { prefix = "<leader>" })

    which_key.register({
        F = {
            function()
                vim.lsp.buf.format()
            end,
            "Format file"
        }
    }, { prefix = "<leader>" })
end
