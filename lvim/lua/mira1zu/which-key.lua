local lazygit_toggle = function()
    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new {
        cmd = 'lazygit',
        env = { CONFIG_DIR = '/Users/bposhtarenko/.config/lazygit/' },
        hidden = true,
        direction = "float",
        float_opts = {
            border = "none",
            width = 100000,
            height = 100000,
        },
        on_open = function(_)
            vim.cmd "startinsert!"
        end,
        on_close = function(_) end,
        count = 99,
    }
    lazygit:toggle()
end
local which_key = require("which-key")

lvim.builtin.which_key.on_config_done = function()
    which_key.register({
        F = {
            function()
                vim.lsp.buf.format()
            end,
            "Format file"
        }
    }, { prefix = "<leader>" })

    which_key.register({
        g = {
            g = {
                function()
                    lazygit_toggle()
                end,
                "Format file"
            }
        }
    }, { prefix = "<leader>" })
end
