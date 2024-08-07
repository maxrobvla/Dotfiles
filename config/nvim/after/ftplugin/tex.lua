vim.keymap.set('n', '<leader>mb', vim.cmd.TexlabBuild, { desc = '[c]ompile', buffer = true })
vim.keymap.set('n', '<leader>mv', vim.cmd.TexlabForward, { desc = '[v]iew', buffer = true })
