local bufferline = require("bufferline")
bufferline.setup({
    options = {
        mode = "buffers",
        separator_style = "thin",
        offsets = {{filetype = "NvimTree", text = "", padding = 0}},
        buffer_close_icon = '✕',
        close_icon = '✕',
    },
    highlights = {
        buffer_selected = {
            italic = false,
        },
    },
})


function toggle_bufferline()
    local showtabline=vim.opt.showtabline:get() == 0 and 2 or 0
    vim.opt.showtabline=showtabline
end

vim.api.nvim_set_keymap('n','<leader>te',':lua toggle_bufferline()<CR>',{ silent = true, })
