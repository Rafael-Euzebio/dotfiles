local set = vim.opt
local api = vim.api

api.nvim_command("au VimEnter * silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'")
api.nvim_command("au VimLeave * silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'")
-- Leader Key
vim.g.mapleader = " "

-- Disabling mouse
vim.cmd("set mouse = ")

-- termguicolors
set.termguicolors = true

-- hidden
set.hidden = true

-- Timeout
set.timeoutlen = 1000
set.ttimeout = false

-- Set numbers
set.relativenumber = true
set.number = true

-- Live Search
set.inccommand = "split"

-- Show Cursorline
set.cursorline = true

-- scrolloff
--set.scrolloff = 999

-- Tab settings
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 0
set.expandtab = true

-- Open buffers
vim.g.switchbuf = "useopen"

-- No Wrap Lines
set.wrap = false

-- Folding
set.foldmethod = "indent"
set.foldlevel = 1

-- Colors

-- Keymap
local keymap = vim.api.nvim_set_keymap

--Search highlight
set.incsearch = true
set.hlsearch = false

-- Esc
keymap("i", "jk", "<Esc>", {})

-- Esc in terminal
--vim.keymap.set("t", "<esc>", "<C-\\><C-n>")
--
-- Create Split
keymap("n", "<leader>hs", ":split<CR>", {})
keymap("n", "<leader>vs", ":vsplit<CR>", {})

-- Navigate Between Splits
keymap("n", "<leader>kk", "<C-W><C-K>", {})
keymap("n", "<leader>jj", "<C-W><C-J>", {})
keymap("n", "<leader>hh", "<C-W><C-H>", {})
keymap("n", "<leader>ll", "<C-W><C-L>", {})

-- Create and Close Tabs
keymap("n", "<leader>tn", ":tabnew<CR>", {})
keymap("n", "<leader>td", ":tabclose<CR>", {})

-- Move Between Tabs
keymap("n", "<leader>tl", ":tabnext<CR>", {})
keymap("n", "<leader>th", ":tabprevious<CR>", {})

-- Navigate Between Buffers
keymap("n", "<leader>bl", ":bn<CR>", {})
keymap("n", "<leader>bh", ":bp<CR>", {})

-- Center when scrolling vertically
keymap("n", "<C-u>", "<C-u>zz", {})
keymap("n", "<C-d>", "<C-d>zz", {})
keymap("n", "n", "nzz", {})

-- Center when scrolling horizontally
keymap("n", "z.", "zszH", {})

-- Close Buffers
keymap("n", "<leader>bd", ":Bdelete<CR>", {})
keymap("n", "<leader>BD", ":bdelete!<CR>", {})

-- Search
keymap("n", "<leader>se", ":%s/", {})

-- Open tmux terminal split
keymap("n", "<leader>rs", ":silent !rsplit <CR>", {})

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Plugins
require("plugins")
require("plugins-requirer")

keymap("n", "<leader>tp", ":silent !tmux popup -d " .. vim.fn.getcwd() .. "<CR>", {})
