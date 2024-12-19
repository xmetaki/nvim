local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
	"git",
	"clone",
	"--filter=blob:none",
	"https://github.com/folke/lazy.nvim.git",
	"--branch=stable", -- latest stable relase
	lazypath
    })
end

vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    "tanvirtin/monokai.nvim",
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {"nvim-tree/nvim-tree.lua", event="VimEnter", dependencies="nvim-tree/nvim-web-devicons"},
    {"nvim-telescope/telescope.nvim", dependencies="nvim-lua/plenary.nvim"},
    {"williamboman/mason.nvim"},
    {"williamboman/mason-lspconfig.nvim"},
    {"neovim/nvim-lspconfig"},
})
