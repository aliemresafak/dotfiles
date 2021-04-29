call plug#begin("~/.vim/autoload/plugins")
Plug 'joshdick/onedark.vim' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'jiangmiao/auto-pairs'
call plug#end()

" coc extensions
let g:coc_global_extensions = [ "coc-calc", "coc-css", "coc-emmet", "coc-html", "coc-htmldjango", "coc-json", "coc-prettier", "coc-pyright","coc-tsserver"]

" LeaderF
let g:Lf_WindowPosition = "popup"
let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewCode = 1
let g:Lf_ShowDevIcons = 0
let g:Lf_ShortcutF = "<C-p>"
let g:Lf_ShortcutB = "<C-b>"
let g:Lf_WildIgnore = {
        \ 'dir': ['.git','migrations', "__pycache__"],
        \ 'file': ['*.py[co]']
        \}

let mapleader = ','

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

" coc
set updatetime=300
inoremap <silent><expr> <C-Space> coc#refresh()

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)




