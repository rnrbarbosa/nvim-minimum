-- local lsp_installer_servers = require "nvim-lsp-installer.servers"
-- --local utils = require "utils"lsp
--
-- local M = {}
--
-- function M.setup(servers, options)
--   for server_name, _ in pairs(servers) do
--     local server_available, server = lsp_installer_servers.get_server(server_name)
--
--     if server_available then
--       server:on_ready(function()
--         local opts = vim.tbl_deep_extend("force", options, servers[server.name] or {})
--         server:setup(opts)
--       end)
--
--       if not server:is_installed() then
--        -- utils.info("Installing " .. server.name)
--         server:install()
--       end
--     else
--       utils.error(server)
--     end
--   end
-- end
--
-- return M

require("nvim-lsp-installer").setup({
    -- List of servers to automatically install
    ensure_installed = { 'pyright', 'tsserver', 'eslint', 'bashls', 'cssls', 'html', 'lua_ls', 'jsonls', 'clangd', 'lemminx' },
    automatic_installation = true,
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})
