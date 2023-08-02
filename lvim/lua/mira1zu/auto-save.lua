require("auto-save").setup {
    enabled = true,
    trigger_events = {
        immediate_save = {
            "InsertLeave",
            "FocusLost",
            "BufWinLeave",
            "CursorHold",
            "VimLeave",
            "TextChanged",
        },
        defer_save = { "FocusLost" }, -- vim events that trigger a deferred save (saves after `debounce_delay`)
        cancel_defered_save = { "FocusLost" },
    },
}
