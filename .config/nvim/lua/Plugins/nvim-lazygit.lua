local keymap = vim.api.nvim_set_keymap

keymap('n', '<leader>lg', ':silent !tmux popup -h 100\\% -w 80\\%  -d \"\\#{pane_current_path}\" -E lazygit<CR> :<CR>', {})
