-- local bufferline = require("bufferline")

-- lvim.builtin.bufferline.options.style_preset = bufferline.style_preset.minimal

lvim.builtin.bufferline.options.show_buffer_close_icons = false

lvim.builtin.bufferline.options.indicator.style = 'underline'

require("which-key").register({
    j = {
        "<cmd>BufferLinePick<cr>",
        "Jump to buffer"
    },
    k = {
        "<cmd>BufferLinePickClose<cr>",
        "Close buffer"
    }
}, { prefix = "<leader>" })
