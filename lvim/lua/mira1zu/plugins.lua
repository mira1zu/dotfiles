lvim.plugins = {
    { "Shatur/neovim-ayu" },       -- main colorscheme
    { "akinsho/bufferline.nvim" }, -- 'tabs' in the standard sense, for buffers
    {
        "folke/which-key.nvim",
        event = "VeryLazy"
    },
    {
        "nvim-telescope/telescope.nvim",
        lazy = true,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "BurntSushi/ripgrep",
            "nvim-telescope/telescope-media-files.nvim"
        },
    },
    { "nvim-treesitter/nvim-treesitter" },
    { "djoshea/vim-autoread" },
    { "simrat39/symbols-outline.nvim" },
    { "ray-x/lsp_signature.nvim" },
    { "rmagatti/goto-preview" },
    {
        "windwp/nvim-ts-autotag",
        lazy = true,
        event = "BufEnter"
    },
    { "sindrets/diffview.nvim" },
    { "nacro90/numb.nvim" },
    { "ethanholz/nvim-lastplace" },
    { "oberblastmeister/neuron.nvim" },
    { "lukas-reineke/virt-column.nvim" },
    {
        "p00f/nvim-ts-rainbow",
        lazy = true,
        event = "BufEnter"
    },
    {
        "ggandor/leap.nvim",
        dependencies = {
            "tpope/vim-repeat"
        }
    },
    { "declancm/cinnamon.nvim" },
    { "dstein64/vim-startuptime" },
    { "nvim-telescope/telescope-project.nvim" },
    { "okuuva/auto-save.nvim" },
    {
        "jose-elias-alvarez/null-ls.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
    },
    {
        "hrsh7th/nvim-cmp",
        lazy = true,
        event = "BufEnter"
    },
    {
        "elgiano/nvim-treesitter-angular",
        branch = "topic/jsx-fix",
        lazy = true,
        event = { "BufEnter *.ts", "BufEnter *.html", "BufEnter *.mdx" }
    },
    { "nvim-lua/popup.nvim" },
    { "SmiteshP/nvim-navic" },
    {
        "mason-lspconfig.nvim",
        lazy = false,
    },
    {
        "brenoprata10/nvim-highlight-colors",
        init = function()
            require('nvim-highlight-colors').setup {}
        end
    },
    { "github/copilot.vim" },
    {
        "epwalsh/obsidian.nvim",
        lazy = true,
        dependencies = {
            -- Required.
            "nvim-lua/plenary.nvim",
            -- Optional, for completion.
            "hrsh7th/nvim-cmp",
            -- Optional, for search and quick-switch functionality.
            "nvim-telescope/telescope.nvim",
        },
    },
    { "L3MON4D3/LuaSnip",  lazy = true, event = "BufEnter" },
    -- {
    --     "nvim-lualine/lualine.nvim",
    --     -- config = function()
    --         -- require('lualine').setup {
    --         --     options = {
    --         --         theme = "ayu",
    --         --         disabled_filetypes = {
    --         --             "alpha"
    --         --         },
    --         --         globalstatus = true,
    --         --     }
    --         -- }
    --     -- end
    -- },
}
