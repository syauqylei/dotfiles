require('packer_bootstrap')
require('plugins')
vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
vim.g.mapleader = " "

vim.o.termguicolors = true

vim.o.smarttab = false
vim.o.number = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.completeopt = 'menu,menuone,noselect'
vim.o.hlsearch = false

vim.o.swapfile = false 

vim.cmd[[colorscheme dracula]]
