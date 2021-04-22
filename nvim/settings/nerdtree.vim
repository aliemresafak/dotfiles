let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let NERDTreeIgnore = ['^lang$', '__pycache__', '^tags$', '.*\.iml', '\.idea', '^vendor$', '^node_modules$', '^bower_components$', '^dist$', 'pyc$', 'yarn-error.log', 'yarn.lock', 'tmp', '^log$', 'coverage', 'bin', 'platforms', '.git', '^build$', '.cache', 'uploads', '.DS_Store', 'id_rsa', '.nuxt', 'static']
let NERDTreeShowHidden = 1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeAutoCenter = 1
let g:NERDTreeWinSize = 40

function! NERDTreeToggleInCurDir()
  " If NERDTree is open in the current buffer
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
    exe ":NERDTreeClose"
  else
    if (expand("%:t") != '')
      exe ":NERDTreeFind"
    else
      exe ":NERDTreeToggle"
    endif
  endif
endfunction

nnoremap <silent> <A-f> :call NERDTreeToggleInCurDir()<CR>

