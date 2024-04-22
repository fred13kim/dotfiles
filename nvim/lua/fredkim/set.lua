vim.opt.nu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.termguicolors = true
vim.opt.relativenumber = true

vim.opt.textwidth = 80

vim.opt.ignorecase= false
vim.opt.infercase = true
vim.opt.smartcase = true

vim.opt.wrap = false

vim.opt.cursorline = true
vim.opt.cursorlineopt = "both"


vim.cmd("filetype indent on")
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")
