local util = require("lspconfig.util")

require("lvim.lsp.manager").setup("angularls", {
    root_dir = util.root_pattern("angular.json", "project.json"),
})

require("lspconfig").cssls.setup{}
require("lspconfig").emmet_ls.setup{}
require("lspconfig").eslint.setup{}
require("lspconfig").jsonls.setup{}
