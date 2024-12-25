local treesitter_status_ok, treesitter = pcall(require, "nvim-treesitter")
if not treesitter_status_ok then
    return
end

require('nvim-treesitter').setup()
require 'nvim-treesitter.configs'.setup {
    auto_install = true,
    highlight = {
        enable = true,
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
    sync_install = true, 
    ensure_installed = { 
         "lua",
         "c",
         "html", 
         "javascript", 
         "typescript", 
         "tsx", 
    },
}
