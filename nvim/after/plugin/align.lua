local NS = { noremap = true, silent = true }

vim.keymap.set('x', 'aa', function() require'align'.align_to_char(1, true)             end, NS)
vim.keymap.set('x', 'as', function() require'align'.align_to_char(2, true, true)       end, NS)
vim.keymap.set('x', 'aw', function() require'align'.align_to_string(false, true, true) end, NS)
vim.keymap.set('x', 'ar', function() require'align'.align_to_string(true, true, true)  end, NS)
