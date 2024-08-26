-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require('nvim-tree').setup {}
    end,
    keys = {
        { '<leader>e', vim.cmd.NvimTreeFocus, desc = 'Focus file tree' },
        { '<leader>n', vim.cmd.NvimTreeToggle, desc = 'Toggle file tree' },
    },
}
