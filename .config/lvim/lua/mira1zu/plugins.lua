lvim.plugins = {
    { "Shatur/neovim-ayu" },       -- main colorscheme
    { "akinsho/bufferline.nvim" }, -- 'tabs' in the standard sense, for buffers
    {
        "folke/which-key.nvim",    -- shows keybindings in a popup
        event = "VeryLazy"
    },
    {
        "nvim-telescope/telescope.nvim", -- fuzzy finder
        lazy = true,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "BurntSushi/ripgrep",
            "nvim-telescope/telescope-media-files.nvim"
        },
    },
    { "nvim-treesitter/nvim-treesitter" },
    { "djoshea/vim-autoread" },
    { "simrat39/symbols-outline.nvim" }, -- class symbols
    { "ray-x/lsp_signature.nvim" },      -- function signature suggestions
    { "rmagatti/goto-preview" },
    {
        "windwp/nvim-ts-autotag",
        lazy = true,
        event = "BufEnter"
    },
    { "sindrets/diffview.nvim" },
    { "nacro90/numb.nvim" },            -- peek lines
    { "ethanholz/nvim-lastplace" },     -- open last place
    { "oberblastmeister/neuron.nvim" }, -- note taking
    { "lukas-reineke/virt-column.nvim" },
    {
        "p00f/nvim-ts-rainbow", -- rainbow parentheses
        lazy = true,
        event = "BufEnter"
    },
    {
        "ggandor/leap.nvim", -- jump to any line on the screen
        dependencies = {
            "tpope/vim-repeat"
        }
    },
    { "declancm/cinnamon.nvim" },                -- smooth scrolling
    { "dstein64/vim-startuptime" },              -- debug purposes
    { "nvim-telescope/telescope-project.nvim" }, -- projects manager
    { "okuuva/auto-save.nvim" },
    {
        "jose-elias-alvarez/null-ls.nvim", -- code actions, formatting, linting
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
    },
    {
        "hrsh7th/nvim-cmp", -- autocompletion
        lazy = true,
        event = "BufEnter"
    },
    {
        "elgiano/nvim-treesitter-angular", -- angular support
        branch = "topic/jsx-fix",
    },
    { "nvim-lua/popup.nvim" },
    { "SmiteshP/nvim-navic" },                -- breadcrumbs
    {
        "brenoprata10/nvim-highlight-colors", -- show colors inline
        init = function()
            require('nvim-highlight-colors').setup {}
        end
    },
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
    },
    {
        "zbirenbaum/copilot-cmp",
        after = { "copilot.lua" },
        config = function()
            require("copilot_cmp").setup()
        end,
    },
    -- {
    --     "epwalsh/obsidian.nvim",
    --     lazy = true,
    --     dependencies = {
    --         -- Required.
    --         "nvim-lua/plenary.nvim",
    --         -- Optional, for completion.
    --         "hrsh7th/nvim-cmp",
    --         -- Optional, for search and quick-switch functionality.
    --         "nvim-telescope/telescope.nvim",
    --     },
    -- },
    { "L3MON4D3/LuaSnip", lazy = true, event = "BufEnter" },
    {
        "SmiteshP/nvim-navbuddy", -- breadcrumbs-like navigation popup
        lazy = true,
        dependencies = {
            "neovim/nvim-lspconfig",
            "SmiteshP/nvim-navic",
            "MunifTanjim/nui.nvim",
            "nvim-telescope/telescope.nvim" -- Optional
        }
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("nvim-navbuddy").setup {
                lsp = {
                    auto_attach = true,
                }
            }
        end,
        dependencies = {
            {
                "SmiteshP/nvim-navbuddy",
                dependencies = {
                    "SmiteshP/nvim-navic",
                    "MunifTanjim/nui.nvim"
                },
                opts = { lsp = { auto_attach = true } }
            }
        },
    },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    -- { "ggandor/flit.nvim" },
    {
        "folke/persistence.nvim",
        event = "BufReadPre", -- this will only start session saving when an actual file was opened
    },
    {
        "iamcco/markdown-preview.nvim",
        lazy = true,
        event = "BufReadPre *.md",
        config = function()
            vim.fn["mkdp#util#install"]()
        end,
    },
    { "folke/zen-mode.nvim" },
}
