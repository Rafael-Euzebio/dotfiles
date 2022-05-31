-- Packer (in Manager)

return require('packer').startup(function()
    use {
        -- Packer
        'wbthomason/packer.nvim',

        -- Synthwave Colorscheme
        'artanikin/vim-synthwave84',
        require('Plugins.nvim-colorscheme'),

        -- File-Tree
        'kyazdani42/nvim-tree.lua',
            requires = {
                'kyazdani42/nvim-web-devicons', 
            },
            tag = 'nightly', 
        require('Plugins.nvim-nvimtree'),

        -- Indent BlankLine
        'lukas-reineke/indent-blankline.nvim',
        require('Plugins.nvim-indentblankline'),

        -- Icons
        'kyazdani42/nvim-web-devicons',
        
        -- Buffer Line
        'noib3/nvim-cokeline',
        require('Plugins.nvim-bufferline'),

        -- Dashboard (Startpage)
        'glepnir/dashboard-nvim',
        require('Plugins.nvim-dashboard'),

        -- Notify
        'rcarriga/nvim-notify',
        require('Plugins.nvim-notify'),

        -- Language Syntax Highlight
        'sheerun/vim-polyglot',

   }
end)
