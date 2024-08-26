-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    { -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000, -- Make sure to load this before all the other start plugins.
        init = function()
            vim.cmd.colorscheme 'catppuccin-mocha'
            vim.cmd.hi 'Comment gui=none'
        end,
    },

    -- Highlight todo, notes, etc in comments
    { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = true } },

    {
        'smoka7/hop.nvim',
        version = '*',
        opts = {
            keys = 'etovxqpdygfblzhckisuran',
        },
    },

    {
        'goolord/alpha-nvim',
        config = function()
            require('alpha').setup(require('alpha.themes.theta').config)
        end,
    },

    -- markdown
    {
        'MeanderingProgrammer/markdown.nvim',
        ft = 'markdown',
        name = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
        dependencies = {
            'nvim-treesitter/nvim-treesitter', -- Mandatory
            'nvim-tree/nvim-web-devicons', -- Optional but recommended
        },
        config = function()
            require('render-markdown').setup {}
        end,
    },
    {
        'kaarmu/typst.vim',
        ft = 'typst',
        lazy = false,
    },
}
