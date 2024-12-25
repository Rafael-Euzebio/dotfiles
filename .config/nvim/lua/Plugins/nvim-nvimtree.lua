local keymap = vim.api.nvim_set_keymap
require("nvim-tree").setup({
  sort = {
    sorter="name",
    folders_first=true
  }
})

keymap("n", "<leader>nt", ":NvimTreeToggle<CR>", {})
