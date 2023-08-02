-- -- Ru-En map
-- vim.api.nvim_set_option('langmap', vim.o.langmap .. ',ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ')  -- Cyrillic layout in normal mode
-- vim.api.nvim_set_option('langmap', vim.o.langmap .. ',фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz')  -- Cyrillic layout in normal mode
-- vim.api.nvim_set_option('langmap', vim.o.langmap .. ',ЖжЭэХхЪъ;\\:\\;\\\"\\\'{[}]')                            -- Cyrillic layout in normal mode

vim.api.nvim_command("set keymap=russian-jcukenmac")

vim.keymap.set({ "i", "v", "c", "r" }, "<M-Space>", "<C-^>", { noremap = true, silent = true })

