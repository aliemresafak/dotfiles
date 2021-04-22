let need_to_install_plugins = 0
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let need_to_install_plugins = 1
endif

call plug#begin("~/.config/nvim/autoload/plugins")
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'ap/vim-buftabline'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'lepture/vim-jinja'
Plug 'pangloss/vim-javascript'
Plug 'alvan/vim-closetag'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim'

Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'justinmk/vim-sneak'

Plug 'TaDaa/vimade'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()


runtime! settings/*.vim
source ~/.config/nvim/keymappings.vim

" Keymappings
" nnoremap <C-j> :sp <Bar> resize 10 <Bar> term<CR>a


" nmap <S-J> :resize -1<CR>
" nmap <S-K> :resize +1<CR>
