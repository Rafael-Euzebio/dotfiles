local set = vim.opt

-- Leader Key
vim.g.mapleader = " "

-- Timeout
set.timeoutlen = 1000
set.ttimeout = false

-- Relative Numbers
set.relativenumber = true

-- Live Search
set.inccommand = "split"

-- Show Cursorline 
set.cursorline= true

-- Tab settings
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.expandtab = true

-- No Wrap Lines
set.wrap = false

-- Folding
set.foldmethod = "indent"
set.foldlevel = 1

-- Colors
set.termguicolors = true
set.background = "dark"

-- Keymap
local keymap = vim.api.nvim_set_keymap

-- Disable Highlight
keymap('n', '<leader>n', ':noh<CR>', {})

