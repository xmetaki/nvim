local is_ok, nvim_tree = pcall(require, "nvim-tree")
if not is_ok then
    vim.notify("can not find nvim-tree")
    return
end

nvim_tree.setup({
    sort_by = "case_sensitive",
    git = {
	enable= true,
    },
    view = {
	side = "left",
	number = false,
	relativenumber = false,
	signcolumn = "yes",
	width= 30,
    },
    renderer = {
	group_empty = true
    }
})
