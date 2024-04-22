--vim.g.nord_contrast = true
--vim.g.nord_borders = false
--vim.g.nord_disable_background = false
--vim.g.nord_italic = false
--vim.g.nord_uniform_diff_background = true
--vim.g.nord_bold = false
--vim.cmd[[colorscheme nord]]
----vim.cmd[[colorscheme serika]]
vim.g.gruvbox_contrast = true
vim.g.gruvbox_borders = false
vim.g.gruvbox_disable_background = false
vim.g.gruvbox_italic = false
vim.g.gruvbox_uniform_diff_background = true
vim.g.gruvbox_bold = false

require("gruvbox").setup({
    italic = {
        strings = false,
        emphasis = false,
        comments = true,
        operators = false,
    },
    transparent_mode = true,

})
vim.o.background = "dark"
vim.cmd[[colorscheme gruvbox]]
