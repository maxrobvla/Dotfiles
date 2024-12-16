-- interactions with repl
return {
    'Vigemus/iron.nvim',
    ft = { 'julia', 'python', 'sh', 'octave' },
    config = function()
        local iron = require 'iron.core'
        local view = require 'iron.view'
        iron.setup {
            config = {
                -- Whether a repl should be discarded or not
                scratch_repl = true,
                -- Your repl definitions come here
                repl_definition = {
                    sh = {
                        -- Can be a table or a function that
                        -- returns a table (see below)
                        command = { 'bash' },
                    },
                    python = {
                        command = { 'ptpython' }, -- or { "ipython", "--no-autoindent" }
                        format = require('iron.fts.common').bracketed_paste_python,
                    },
                    julia = {
                        command = { 'julia', '--banner=no' },
                        format = require('iron.fts.common').bracketed_paste_python,
                    },
                },
                repl_open_cmd = view.split.vertical.botright '50%',
            },
        }
        -- send_motion = "<space>sc",
        -- send_paragraph = "<space>sp",
        -- send_until_cursor = "<space>su",
        -- cr = "<space>s<cr>",
        -- interrupt = "<space>s<space>",
        -- exit = "<space>sq",
        -- clear = "<space>cl",
        local keys = vim.keymap.set
        keys('n', '<leader>mrs', vim.cmd.IronRepl, { desc = '[s]tart [r]epl' })
        keys('n', '<leader>mrf', vim.cmd.IronReplFocus, { desc = '[f]ocus [r]epl' })
        -- BUG: does not work because of bug in plugin
        -- keys('n', '<leader>mrr', vim.cmd.IronRestart, { desc = '[r]estart [r]epl' })
        keys('v', '<leader>mss', function()
            iron.visual_send()
        end, { desc = '[s]end [s]election to repl' })
        keys('n', '<leader>msl', function()
            iron.send_line()
        end, { desc = '[s]end [l]ine to repl' })
        keys('n', '<leader>msf', function()
            iron.send_file()
        end, { desc = '[s]end [f]ile to repl' })
        -- BUG: does not work because of bug in plugin
        -- keys('n', '<leader>mrq', function()
        --     iron.send(nil, iron.close_repl)
        -- end, { desc = '[r]epl [q]uit' })
        keys('n', '<leader>mrl', function()
            iron.send(nil, string.char(12))
        end, { desc = 'c[l]ear [r]epl' })
        keys('n', '<leader>mri', function()
            iron.send(nil, string.char(03))
        end, { desc = '[i]nterrupt [r]epl' })
        keys('n', '<leader>mr<cr>', function()
            iron.send(nil, string.char(13))
        end, { desc = 'send [ENTER] to [r]epl' })
    end,
}
