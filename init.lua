vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "
-- encoding
-- vim.o.encofing = "utf-8"
vim.scriptencoding = "utf-8"

-- visuall
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.cmdheight = 1
-- emoji
vim.opt.emoji = true
-- clipboard
vim.o.clipboard = 'unnamed'

-- 不可視文字を表示
vim.opt.list = true
vim.opt.listchars = "tab:¦ ,trail:･"

-- load lazy.nvim
require("lazy_nvim")
require("keymaps")

