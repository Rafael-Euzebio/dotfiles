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

-- Esc
keymap('i', 'jk', '<Esc>', {})

-- Create Split 
keymap('n', '<leader>hs', ':split<CR>', {})
keymap('n', '<leader>vs', ':vsplit<CR>', {})

-- Navigate Between Splits 
keymap('n', '<leader>kk', '<C-W><C-K>', {})
keymap('n', '<leader>jj', '<C-W><C-J>', {})
keymap('n', '<leader>hh', '<C-W><C-H>',{})
keymap('n', '<leader>ll', '<C-W><C-L>', {})

-- Create and Close Tabs
keymap('n', '<leader>tn', ':tabnew<CR>', {})
keymap('n', '<leader>td', ':tabclose<CR>', {}) 

-- Move Between Tabs
keymap('n', '<leader>tl', ':tabnext<CR>', {})
keymap('n', '<leader>th', ':tabprevious<CR>', {})

-- Navigate Between Buffersj
keymap('n', '<leader>bl', ':bn<CR>', {})
keymap('n', '<leader>bh', ':bp<CR>', {})

-- Close Buffers
keymap('n', '<leader>bd', ':bdelete<CR>', {})


-- Plugins
require('plugins')
