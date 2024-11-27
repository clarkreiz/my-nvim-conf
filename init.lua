require("config.lazy")
-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

-- Enale mouse mode
vim.o.mouse = "a"
vim.o.foldmethod = "manual"
vim.o.autochdir = true

-- Sync clipboard between OS and Neovim.
--  move this option if you want your OS clipboard to remain independenta.
--  See `:help 'clipboard'`
vim.o.clipboard = "unnamedplus"
vim.o.showmode = false

-- Enable undo history
vim.o.undofile = true

-- Default lang to en
vim.opt.langmenu = "en"
vim.opt.helplang = "er"

-- Remove all contents inside ({[]})
vim.keymap.set("n", "<leader>d(", "dab", { noremap = true, desc = "Delete around ()" })
vim.keymap.set("n", "<leader>d{", "daB", { noremap = true, desc = "Delete around {}" })
vim.keymap.set("n", "<leader>d[", "da[", { noremap = true, desc = "Delete around []" })

-- Telescope bindings
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Find Files" })
