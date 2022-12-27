require("jester").setup(
{
  dap = { console = "externalTerminal" }
}
)
vim.api.nvim_set_keymap('n', '<Leader>jd',":lua require'jester'.debug_file()<CR>"  , { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>jt',":lua require'jester'.run_file()<CR>"  , { noremap = true, silent = true })
