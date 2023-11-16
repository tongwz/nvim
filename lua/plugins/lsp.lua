-- require("nvim-lsp-installer").setup({
--     automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
--     ui = {
--         icons = {
--             server_installed = "✓",
--             server_pending = "➜",
--             server_uninstalled = "✗"
--         }
--     }
-- })

require("mason").setup({
    PATH = "prepend", -- "skip" seems to cause the spawning error
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "gopls"},
}

require("lspconfig").lua_ls.setup({})
require("lspconfig").gopls.setup({})
require("lspconfig").intelephense.setup({})
