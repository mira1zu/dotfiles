local obsidian_dir = "/Users/bposhtarenko/Vault"

require("obsidian").setup({
    dir = obsidian_dir, -- no need to call 'vim.fn.expand' here
    -- Optional, completion.
    completion = {
        -- If using nvim-cmp, otherwise set to false
        nvim_cmp = true,
        -- Trigger completion at 2 chars
        min_chars = 2,
        -- Where to put new notes created from completion. Valid options are
        --  * "current_dir" - put new notes in same directory as the current buffer.
        --  * "notes_subdir" - put new notes in the default notes subdirectory.
        new_notes_location = "current_dir"
    },

    -- -- Optional, customize how names/IDs for new notes are created.
    -- note_id_func = function(title)
    --     -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
    --     -- In this case a note with the title 'My new note' will given an ID that looks
    --     -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
    --     local suffix = ""
    --     if title ~= nil then
    --         -- If title is given, transform it into valid file name.
    --         suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
    --     else
    --         -- If title is nil, just add 4 random uppercase letters to the suffix.
    --         for _ = 1, 4 do
    --             suffix = suffix .. string.char(math.random(65, 90))
    --         end
    --     end
    --     return tostring(os.time()) .. "-" .. suffix
    -- end,

    -- Optional, set to true if you don't want Obsidian to manage frontmatter.
    disable_frontmatter = true,

    -- -- Optional, alternatively you can customize the frontmatter data.
    -- note_frontmatter_func = function(note)
    --     -- This is equivalent to the default frontmatter function.
    --     local out = { id = note.id, aliases = note.aliases, tags = note.tags }
    --     -- `note.metadata` contains any manually added fields in the frontmatter.
    --     -- So here we just make sure those fields are kept in the frontmatter.
    --     if note.metadata ~= nil and require("obsidian").util.table_length(note.metadata) > 0 then
    --         for k, v in pairs(note.metadata) do
    --             out[k] = v
    --         end
    --     end
    --     return out
    -- end,

    -- -- Optional, for templates (see below).
    -- templates = {
    --     subdir = "templates",
    --     date_format = "%Y-%m-%d-%a",
    --     time_format = "%H:%M",
    -- },

    -- Optional, by default when you use `:ObsidianFollowLink` on a link to an external
    -- URL it will be ignored but you can customize this behavior here.
    follow_url_func = function(url)
        -- Open the URL in the default web browser.
        vim.fn.jobstart({ "open", url }) -- Mac OS
        -- vim.fn.jobstart({"xdg-open", url})  -- linux
    end,

    -- Optional, set to true if you use the Obsidian Advanced URI plugin.
    -- https://github.com/Vinzent03/obsidian-advanced-uri
    use_advanced_uri = true,

    -- Optional, set to true to force ':ObsidianOpen' to bring the app to the foreground.
    open_app_foreground = false,

    -- Optional, by default commands like `:ObsidianSearch` will attempt to use
    -- telescope.nvim, fzf-lua, and fzf.nvim (in that order), and use the
    -- first one they find. By setting this option to your preferred
    -- finder you can attempt it first. Note that if the specified finder
    -- is not installed, or if it the command does not support it, the
    -- remaining finders will be attempted in the original order.
    finder = "telescope.nvim",
    mappings = {},
    note_id_func = function(title)
        return title
    end,
})

-- -- Optional, override the 'gf' keymap to utilize Obsidian's search functionality.
-- -- see also: 'follow_url_func' config option above.
-- vim.keymap.set("n", "gf", function()
--     if require("obsidian").util.cursor_on_markdown_link() then
--         return "<cmd>ObsidianFollowLink<CR>"
--     else
--         return "gf"
--     end
-- end, { noremap = false, expr = true })

local M = {}

M.open_obsidian = function()
    if vim.bo.filetype ~= "markdown" then
        return
    end

    vim.api.nvim_command("ObsidianOpen")
end

M.open_obsidian_autocmd = function()
    return vim.api.nvim_create_autocmd("BufEnter", {
        pattern = "*.md",
        command = "lua require('mira1zu.obsidian').open_obsidian()"
    })
end

M.init_obsidian = function()
    local which_key = require("which-key")

    -- Setup working directory
    vim.api.nvim_command(":cd" .. obsidian_dir)
    vim.api.nvim_command("Lazy load obsidian.nvim")
    vim.api.nvim_command("Telescope find_files")

    local autocmdId = nil

    -- Setup which-key mappings
    which_key.register({
        o = {
            a = {
                function()
                    if autocmdId ~= nil then
                        vim.api.nvim_del_autocmd(autocmdId)

                        autocmdId = nil
                    else
                        autocmdId = M.open_obsidian_autocmd()
                    end
                end,
                "Toggle ObsidianOpen autocmd"
            },
            b = {
                "<cmd>ObsidianBacklinks<CR>",
                "Backlinks"
            },
            f = {
                "<cmd>ObsidianFollowLink<CR>",
                "Follow link"
            },
            o = {
                "<cmd>ObsidianOpen<CR>",
                "Open note in Obsidian"
            },
            s = {
                "<cmd>ObsidianSearch<CR>",
                "Search"
            },
            n = {
                function()
                    vim.ui.input({ prompt = "Create file " }, function(file_name)
                        vim.api.nvim_command("ObsidianNew " .. file_name)
                    end)
                end,
                "Create new note"
            },
            q = {
                "<cmd>ObsidianQuickSwitch<CR>",
                "Quick switch"
            },
            "Obsidian"
        }
    }, { prefix = "<leader>" })
end

return M
