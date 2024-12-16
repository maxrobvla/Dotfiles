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
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {},
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    },
    -- {
    --     'MeanderingProgrammer/render-markdown.nvim',
    --     ft = 'markdown',
    --     dependencies = {
    --         'nvim-treesitter/nvim-treesitter', -- Mandatory
    --         'nvim-tree/nvim-web-devicons', -- Optional but recommended
    --     },
    --     config = function()
    --         require('render-markdown').setup {}
    --     end,
    -- },
    {
        'chomosuke/typst-preview.nvim',
        lazy = false, -- or ft = 'typst'
        version = '1.*',
        opts = {
            open_cmd = 'vimb %s',
        }, -- lazy.nvim will implicitly calls `setup {}`
    },
}
