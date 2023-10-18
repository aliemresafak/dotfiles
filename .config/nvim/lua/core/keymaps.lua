local map = vim.keymap.set
local options = { noremap = true, silent = true }

-- copy line
map("n", "Y", '0"+Y$', options)

-- quit from vim
map("n", "<leader>q", ":qa!<CR>", options)

-- focus pane
map("n", "<C-h>", "<C-w>h", options)
map("n", "<C-j>", "<C-w>j", options)
map("n", "<C-k>", "<C-w>k", options)
map("n", "<C-l>", "<C-w>l", options)

-- clear hightlighting
map("n", "<Space>", ":nohl<CR>", options)

map("n", "<C-f>", "<C-f>zz")
map("n", "<C-u>", "<C-u>zz")
