require("nvim-tree").setup({
    sort_by = "case_sensitive",
    sync_root_with_cwd = true,
    view = {
        number = true,
        relativenumber = true,
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
    },

})
