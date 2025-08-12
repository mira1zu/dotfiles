local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
    { name = "eslint_d" },
})

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
    {
        name = "prettierd",
        args = { "--print-width", "80", "--tab-width", "4", "--prose-wrap", "always" }
    },
})

local code_actions = require("lvim.lsp.null-ls.code_actions")
code_actions.setup({
    { name = "eslint_d" }
})
