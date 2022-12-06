require("nvim-tree").setup()
vim.api.nvim_set_keymap('n', '<Leader>e',  [[<Cmd>:NvimTreeToggle<CR>]], { noremap = true, silent = true })
