local lsp = require("lsp-zero")
lsp.preset('recommended')

lsp.ensure_installed({
    'tsserver',
    'lua_ls',
    'html',
    'emmet_ls',
    'marksman',
    'matlab_ls',
    'clangd',
    'bashls',
    'pylsp',
})

lsp.set_preferences({
    sign_icons = { }
})

vim.diagnostic.config({
  signs = false
})

require('lspconfig').emmet_ls.setup({
    capabilities = capabilities,
    filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue" },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
})

require('lspconfig').matlab_ls.setup({
    filetypes = {"matlab"},
    settings = {
        matlab = {
            installPath = "/usr/local/MATLAB/R2024a/"
        },
    },
    single_file_support = true
})

lsp.setup()
