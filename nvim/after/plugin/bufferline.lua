local highlights = require("nord").bufferline.highlights({
    italic = false,
    bold = true,
    --fill = "#181c24"
})

require("bufferline").setup({
    options = {
        separator_style = "thin",
        offsets = {{filetype = "NvimTree", text = "", padding = 0}},
    },
    highlights = highlights,
})

