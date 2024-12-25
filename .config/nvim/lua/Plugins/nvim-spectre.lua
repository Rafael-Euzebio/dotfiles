require('spectre').setup({
    default = {
        replace = {
            cmd = "oxi"
       }
    }
})

vim.cmd('nnoremap <leader>sw <cmd>lua require("spectre").open()<CR>')
