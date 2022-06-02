-- Packer (in Manager)

vim.cmd[[packadd packer.nvim]]

return require('packer').startup(function()
    use {
        -- Packer
        'wbthomason/packer.nvim',

        -- Synthwave Colorscheme
        'artanikin/vim-synthwave84',

        -- File-Tree
        'kyazdani42/nvim-tree.lua',
            requires = {
                'kyazdani42/nvim-web-devicons', 
            },
            tag = 'nightly', 

        -- Indent BlankLine
        'lukas-reineke/indent-blankline.nvim',

        -- Icons
        'kyazdani42/nvim-web-devicons',
        
        -- Buffer Line
        'noib3/nvim-cokeline',

        -- Dashboard (Startpage)
        'glepnir/dashboard-nvim',

        -- Notify
        'rcarriga/nvim-notify',

        -- Language Syntax Highlight
        'sheerun/vim-polyglot',

        -- AutoClose Pairs ([{
        'jiangmiao/auto-pairs',

        -- Show Colors of Rgba and Hex Codes
        'lilydjwg/colorizer', 

        -- AutoClose HTML Tags
        'alvan/vim-closetag',

        -- Fuzzy-Finder
        'nvim-telescope/telescope.nvim',
        'nvim-lua/plenary.nvim',

        -- Git UI
        'kdheepak/lazygit.nvim',
        'lewis6991/gitsigns.nvim',

        -- HTML Helper
        'mattn/emmet-vim',

        -- LSP
        "williamboman/nvim-lsp-installer",
        "neovim/nvim-lspconfig",

        -- CMP Autocomplete
        'hrsh7th/nvim-cmp',
        'dcampos/cmp-snippy',
        'sar/cmp-lsp.nvim',

        -- CMP Tabnine
        {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'},

        -- Snippets,
        'L3MON4D3/LuaSnip', 
        'saadparwaiz1/cmp_luasnip',
        'rafamadriz/friendly-snippets',

        -- Schemastore
        'b0o/schemastore.nvim',

        -- Copilot
        'github/copilot.vim',
    
        -- Null-ls
        'jose-elias-alvarez/null-ls.nvim',

        -- Prettier
        {'prettier/vim-prettier', run = 'yarn install --frozen-lockfile --production' }
   }
end)
