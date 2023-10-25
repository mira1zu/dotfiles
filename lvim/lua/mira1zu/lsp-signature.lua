require("lsp_signature").setup({
    bind = false, -- This is mandatory, otherwise border config won't get registered.
    hint_enable = false,
    hint_prefix = nil,
    handler_opts = {
        border = "rounded"
    },
    floating_window = false
})
