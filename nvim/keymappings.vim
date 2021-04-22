let mapleader = ","

" Quickly close current window.
nnoremap <silent> <Space>q :quit<CR>

" Pane nagivation.
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Always search with 'very magic' mode.
nnoremap / /\v
nnoremap ? ?\v

" Always send contents of a `x` command to the black hole register.
nnoremap x "_x

" Scroll viewport faster.
nnoremap <A-d> 2<C-e>
nnoremap <A-u> 2<C-y>

" Resize current window sizes.
nnoremap <S-A-k> 2<C-w>+
nnoremap <S-A-j> 2<C-w>-
nnoremap <S-A-l> 2<C-w>>
nnoremap <S-A-h> 2<C-w><


" Stay in visual mode when indenting.
xnoremap < <gv
xnoremap > >gv

nnoremap <silent> <leader>t :split <Bar> resize 10 <Bar> term<CR>
tnoremap <Esc> <C-\><C-n><C-w><C-k>
