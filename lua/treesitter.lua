let is_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not is_ok:
    vim.notify("can not found nvim-treesitter")
    return
end

treesitter.setup({
    ensure_installed = {"c", "java", "vim", "javascript"},
    highlight = {
        enable = true
    }
})
