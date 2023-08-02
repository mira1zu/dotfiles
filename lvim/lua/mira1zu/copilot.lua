require("copilot").setup({
    suggestion = {
        auto_trigger = true
    },
    server_opts_overrides = {
        settings = {
            advanced = {
                temperature = 0,
            }
        }
    },
})
