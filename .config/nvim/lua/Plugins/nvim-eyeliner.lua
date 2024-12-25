require'eyeliner'.setup {
    highlight_on_key = true, -- show highlights only after keypress
    dim = false,-- dim all other characters if set to true (recommended!)
}

vim.api.nvim_create_autocmd('ColorScheme', {
    pattern = '*',
    callback = function()
        vim.api.nvim_set_hl(0, 'EyelinerPrimary', { bold = true, underline = true })
    end,
})
