local telescope = require('telescope')
local builtin = require('telescope.builtin')

telescope.setup {
	defaults = {
	    find_files = {
            hidden = true
        }
	}
}

vim.api.nvim_set_keymap('n', '<leader>pf', ':lua require"telescope.builtin".find_files({ hidden = true })<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
