local telescope = require('telescope')
local builtin = require('telescope.builtin')

local opts = {
    silent = true,
}

telescope.setup {
	defaults = {
        file_ignore_patterns = {
            '.git/',
        },
	},
    pickers = {
        find_files = {
            hidden = true
        }
    },
}

vim.keymap.set('n', '<leader>pf', builtin.find_files, opts)
vim.keymap.set('n', '<leader>pg', builtin.git_files, opts)
vim.keymap.set('n', '<leader>pr', builtin.live_grep, opts)
vim.keymap.set('n', '<leader>pt', builtin.treesitter, opts)

telescope.load_extension "file_browser"
