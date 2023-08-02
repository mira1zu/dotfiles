lvim.builtin["terminal"].autochdir = true

lvim.builtin['terminal'].execs = {
      { nil, "<M-1>", "Float Terminal", "float", nil },
      { nil, "<M-2>", "Float Terminal", "float", nil },
      { nil, "<M-3>", "Float Terminal", "float", nil }
}

lvim.builtin['terminal'].autochdir = true

local M = {}

M.lazygit_toggle = function()
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

return M
