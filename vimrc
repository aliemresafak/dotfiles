call plug#begin("~/.vim/autoload/plugins")
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

call plug#end()

" LeaderF 
let g:Lf_WindowPosition = "popup" 
let g:Lf_PreviewInPopup = 1 
let g:Lf_PreviewCode = 1
let g:Lf_ShowDevIcons = 0
let g:Lf_ShortcutF = "<C-p>"
let g:Lf_ShortcutB = "<C-b>"
let g:Lf_WildIgnore = {
        \ 'dir': ['.git','migrations', "__pycache__", "node_modules"],
        \ 'file': ['*.py[co]', 'yarn.lock', '*.tar.gz']
        \}

set nobackup
set noswapfile

set breakindent
set nowrap

" UI
set number
set laststatus=2

set tabstop=2
set shiftwidth=0
set softtabstop=-1
set expandtab
set shiftround
set smartindent

" Search
set ignorecase
set nohlsearch
set smartcase

set splitbelow
set splitright

" Theme
set background=dark
colorscheme onedark

if exists("$TMUX")
  set notermguicolors
else
  set termguicolors
endif 

" Insert and Normal Mode enable cursor line
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline

let mapleader=","

vmap <Leader>yy :!xclip -f -sel clip<CR>
map <Leader>pp mz:-1r !xclip -o -sel clip<CR>`z

