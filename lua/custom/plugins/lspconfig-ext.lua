M = {}

local servers = {
    zls = {
        enable_build_on_save = true,
    }
}

local lsp = require("lspconfig")

if lsp ~= nil then
    for server, config_server in pairs(servers) do
        lsp[server].setup(config_server)
    end
end

return M