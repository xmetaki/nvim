vim.o.ignorecase=true
vim.g.mapleader=" "
vim.o.shiftwidth=4
vim.o.list=true
vim.o.listchars="space:.,tab:>~"
local opts = {
    noremap = true, -- no-recusive map
    silent = true -- do not show messages
}

vim.keymap.set('i', 'jk', '<Esc>', opts)
vim.keymap.set('n', 'sv', '<C-w>v', opts)
vim.keymap.set('n', 'sc', '<C-w>c', opts)
vim.keymap.set('n', '<leader>e', '<C-w>w', opts)
vim.keymap.set('n', '<leader>d', ":NvimTreeToggle<CR>", opts)
vim.keymap.set('n', '<C-p>', ":Telescope find_files<CR>",opts)
vim.keymap.set('n', '<C-f>', ":Telescope live_grep<CR>",opts)
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
