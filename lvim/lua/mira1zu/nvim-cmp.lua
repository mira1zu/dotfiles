local cmp = require("cmp")

lvim.builtin.cmp.completion.completeopt = 'menu,menuone,noinsert'

lvim.builtin.cmp.window.completion.border = nil
lvim.builtin.cmp.window.completion.col_offset = 0
lvim.builtin.cmp.window.completion.scrollbar = true
lvim.builtin.cmp.window.completion.scrolloff = 0
lvim.builtin.cmp.window.completion.side_padding = 2
lvim.builtin.cmp.window.completion.winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None"
lvim.builtin.cmp.window.completion.zindex = 1001
lvim.builtin.cmp.window.documentation.border = nil
lvim.builtin.cmp.window.documentation.col_offset = 0
lvim.builtin.cmp.window.documentation.scrollbar = true
lvim.builtin.cmp.window.documentation.scrolloff = 0
lvim.builtin.cmp.window.documentation.side_padding = 2
lvim.builtin.cmp.window.documentation.winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None"
lvim.builtin.cmp.window.documentation.zindex = 1001

-- lvim.builtin.cmp.mapping["."] = cmp.mapping.confirm({ select = true })
