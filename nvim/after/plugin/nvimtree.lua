local function my_on_attach(bufnr)
    local inject_node = require("nvim-tree.utils").inject_node
    local api = require("nvim-tree.api")
    api.config.mappings.default_on_attach(bufnr)

    vim.keymap.set("n", "<Enter>", inject_node(function(node)
        if node.name == '..' or node.nodes then
            api.tree.change_root_to_node()
        else
            api.node.open.edit()
        end
    end), {buffer = bufnr})
end


require("nvim-tree").setup({
    on_attach = my_on_attach,
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
        git_ignored = false,
    },
})
