local keymap = vim.api.nvim_set_keymap

require('nvim-tree').setup{}
keymap('n', '<leader>nt', ':NvimTreeToggle<CR>', {})


