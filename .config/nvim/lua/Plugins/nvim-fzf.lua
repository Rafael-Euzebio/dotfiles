--Mappings
local keymap = vim.api.nvim_set_keymap

require('fzf-lua').setup({
  winopts = {
    on_create = function()
        local function feedkeys(normal_key, insert_key)
            vim.keymap.set("n", normal_key, function()
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("i", true, false, true) or "", "n", true)
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(insert_key, true, false, true) or "", "n", true)
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true) or "", "n", true)
            end, { nowait = true, noremap = true, buffer = vim.api.nvim_get_current_buf() })
        end
        feedkeys("j", "<c-n>")
        feedkeys("k", "<c-p>")
        feedkeys("f", "<c-f>")
        feedkeys("b", "<c-b>")
        feedkeys("q", "<Esc>")

    end
  }
})

keymap('n', '<leader>ff', ':FzfLua files<CR>', {})
keymap('n', '<leader>fb', ':FzfLua buffers<CR>', {})
keymap('n', '<leader>fo', ':FzfLua oldfiles<CR>', {})
keymap('n', '<leader>fg', ':FzfLua live_grep<CR>', {})


