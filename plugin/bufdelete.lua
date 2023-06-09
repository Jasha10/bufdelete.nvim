-- Define Bdelete and Bwipeout.
vim.api.nvim_create_user_command(
    'Bdelete',
    function(opts) require('bufdelete')._buf_kill_cmd(opts, false) end,
    { bang = true, count = true, addr = 'buffers', nargs = '?' }
)

vim.api.nvim_create_user_command(
    'Bwipeout',
    function(opts) require('bufdelete')._buf_kill_cmd(opts, true) end,
    { bang = true, count = true, addr = 'buffers', nargs = '?' }
)
