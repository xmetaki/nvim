local is_mason_ok, mason = pcall(require, "mason")
if not is_mason_ok then
    vim.notify("can not found mason")
    return
end

local is_lsp_ok, nvim_lsp = pcall(require, "lspconfig")
if not is_lsp_ok then
    vim.notify("can not found lspconfig")
    return
end

local is_mason_lsp_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not is_mason_lsp_ok then
    vim.notify("can not found mason-lspconfig")
    return
end


mason.setup()
mason_lspconfig.setup({})
