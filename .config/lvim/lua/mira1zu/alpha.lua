lvim.builtin.alpha.dashboard.section.header.val = {
    [[██╗    ███╗██╗██████╗  █████╗  ██╗███████╗██╗   ██╗]],
    [[████╗ ████║██║██╔══██╗██╔══██╗███║╚══███╔╝██║   ██║]],
    [[██╔████╔██║██║██████╔╝███████║╚██║  ███╔╝ ██║   ██║]],
    [[██║╚██╔╝██║██║██╔══██╗██╔══██║ ██║ ███╔╝  ██║   ██║]],
    [[██║ ╚═╝ ██║██║██║  ██║██║  ██║ ██║███████╗╚██████╔╝]],
    [[╚═╝     ╚═╝╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═╝╚══════╝ ╚═════╝ ]],
}

table.insert(
    lvim.builtin.alpha.dashboard.section.buttons.entries,
    {
        "v",
        "󰎛  Vault",
        [[<CMD>lua require("mira1zu.obsidian").init_obsidian()<cr>]]
    }
)
