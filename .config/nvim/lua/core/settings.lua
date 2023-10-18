local cmd = vim.cmd
local g = vim.g
local opt = vim.opt

g.mapleader = ","
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.swapfile = false

opt.number = true
opt.showmatch = true
opt.splitright = true
opt.splitbelow = true
opt.ignorecase = true
opt.smartcase = true
opt.linebreak = true
opt.laststatus = 3

opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true

-- folding
vim.o.foldcolumn = "1"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- disable commenting when add new line
cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])

-- custom indentation
cmd([[
  autocmd FileType xml,html,xhtml,css,scss,sass,js,ts,jsx,tsx,lua,yaml setlocal shiftwidth=2 tabstop=2
]])
