local lazygit_toggle = function()
    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new {
      cmd = 'CONFIG_DIR="$HOME/.config/lazygit" && lazygit',
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
