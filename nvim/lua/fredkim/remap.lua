vim.keymap.set('n', '<Space>', '<Nop>')
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>P', '"+P')
vim.keymap.set('n', '<leader>y', '"+Y')
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p')
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y')

vim.keymap.set('n', '<leader>fe', vim.cmd.NvimTreeToggle)

vim.keymap.set('n', '<leader>cc', '<CMD>!make<CR>')
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])

vim.keymap.set('n', '<S-l>', '<CMD>BufferLineCycleNext<CR>')
vim.keymap.set('n', '<S-h>', '<CMD>BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader><S-l>', '<CMD>BufferLineMoveNext<CR>')
vim.keymap.set('n', '<leader><S-h>', '<CMD>BufferLineMovePrev<CR>')
vim.keymap.set('n', 'Q', '<CMD>bp|bd#<CR>')
