" Start vim-plug
call plug#begin('~/.vim/plugged')

" javascript support
Plug 'pangloss/vim-javascript'

" jsx support
Plug 'mxw/vim-jsx'

" linting with ALE
Plug 'w0rp/ale'

" autosave
" Plug 'chrisbra/vim-autosave'

" json support
Plug 'leshill/vim-json'

" editorconfig support
Plug 'editorconfig/editorconfig-vim'

" jasmine test support
Plug 'glanotte/vim-jasmine'

call plug#end()

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set number
set backspace=indent,eol,start

" ALE configuration
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_lint_on_text_changed = 'never'
let g:ale_fixers = {'javascript': ['eslint']}

" Remove whitespace when saving
autocmd BufWritePre * %s/\s\+$//e
