local keymap = vim.api.nvim_set_keymap

require('telescope').setup {}

keymap('n', '<leader>ff', ':Telescope find_files<CR>', {})
keymap('n', '<leader>fo', ':Telescope oldfiles<CR>', {})
keymap('n', '<leader>fg', ':Telescope live_grep<CR>', {})
keymap('n', '<leader>fb', ':Telescope buffers<CR>', {})


