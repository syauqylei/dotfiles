local dap = require('dap')
dap.adapters.node2 = { type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js'},
}
dap.configurations.javascript = {
  {
    name = 'Launch',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
  {
    -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    name = 'Attach to process',
    type = 'node2',
    request = 'attach',
    processId = require'dap.utils'.pick_process,
  },
}
dap.configurations.typescript = {
  {
    name = 'Launch',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
  {
    -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    name = 'Attach to process',
    type = 'node2',
    request = 'attach',
    processId = require'dap.utils'.pick_process,
  },
}

vim.api.nvim_set_keymap('n', '<Leader>dc',":lua require'dap'.continue()<CR>"  , { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dl',":lua require'dap'.step_into()<CR>"  , { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dh',":lua require'dap'.step_out()<CR>"  , { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dj',":lua require'dap'.step_over()<CR>"  , { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>db',":lua require'dap'.toggle_breakpoint()<CR>"  , { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dp',":lua require'dap'.repl.open()<CR>"  , { noremap = true, silent = true })
