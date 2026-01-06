-- Because I use LunarVim, treesitter is presitter is preinstalled, so any
-- modification of require.setup won't make any effect, because it will be
-- overriden by LunarVim.
-- require("nvim-treesitter.configs").setup {}

-- lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.highlight.additional_vim_regex_highlighting = true

vim.list_extend(
    lvim.builtin.treesitter.ensure_installed,
    { 'c', 'cpp', 'go', 'lua', 'python', 'rust', 'typescript', 'cmake', 'markdown', 'markdown_inline' }
)

