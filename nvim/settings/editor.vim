let mapleader = ","

" Colors
set termguicolors " Enable True Color support.
let g:material_terminal_italics = v:true
let g:onedark_termcolors = 256
let g:onedark_terminal_italics = 1
colorscheme onedark " Color scheme.

" Behaviour
set breakindent " Wrapped lines will be visually indented with same amount of space.
set nomodeline " Disable modeline altogether.
set startofline " Move cursor to the start of each line when jumping with certain commands.
set nowrap " Prevent wrapping for long lines.
set scrolloff=5 " Minimum number of screen lines to keep above and below the cursor.
set shellpipe=&> " Fix potentional screen flashing problems with not using `tee`.
set sidescroll=5 " Columns to scroll horizontally when cursor is moved off the screen.
set sidescrolloff=5 " Minimum number of screen columns to keep to cursor right.
set synmaxcol=200 " Maximum column in which to search for syntax items.
set timeoutlen=500 " Mapping delays in milliseconds.
set ttimeoutlen=0 " Key code delays in milliseconds.
set updatetime=300 " If that milliseconds nothing is typed CursorHold event will trigger.
set linebreak " Wrap lines in 'breakat', rather than at the last character.
set completeopt=noinsert,menuone " Options for insert mode completion.....

" Interface
set number " Show line numbers alongside relative numbers.
set cursorline " Highlight the line background of the cursor.
set noruler " Disable showing line numbers in command line.
set signcolumn=yes " Always draw the sign column even there is no sign in it.
set pumheight=10 " Maximum height of the popup menu for insert mode completion.
set inccommand=split " Show live substitution results as you type.

" Indentation
set tabstop=2 " Length of a <Tab> character.
set shiftwidth=0 " Number of spaces to use for each step of auto indent operators.
set softtabstop=-1 " Number of spaces that a <Tab> counts.
set expandtab " Enable using spaces instead of tab characters.
set shiftround " Round indent to multiple of 'shiftwidth'. Applies to > and < commands.
set smartindent " Automatically inserts one extra level of indentation in some cases.

" Folding
set foldlevelstart=99 " Start editing with all folds open.
set foldmethod=indent " Use indent model for folding mechanism.
set foldopen=hor,mark,percent,quickfix,tag,undo " Specifies for which type of commands folds will be opened.

" Search
set ignorecase " Make default search is not case sensitive.
set nohlsearch " Disable highlight the matched search results by default.
set smartcase " If a uppercase character is entered, the search will be case sensitive.

" Backup
set undofile " Undo tree to be saved to a file when exiting a buffer.
set undolevels=100000 " Maximum undo limit.

" Buffers, Windows, Tabs
set hidden " Allows you to hide buffers with unsaved changes without being prompted.
set splitbelow " Splitting a window will put the new window below of the current one.
set splitright " Splitting a window will put the new window right of the current one.

" Command Mode
set noshowcmd " Disable displaying key presses at the right bottom.
set noshowmode " Disable native mode indicator.

" Root
if exists('$SUDO_USER')
  set noswapfile
  set nobackup
  set nowritebackup
  set noundofile
  set shada=
endif


" Terminal
augroup neovim_terminal
  autocmd!
  autocmd TermOpen * startinsert
  autocmd TermOpen * :set nonumber norelativenumber
  autocmd TermOpen * nnoremap <buffer> <C-c> i<C-c>
augroup END
