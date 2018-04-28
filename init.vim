" PLUGINS

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" async running
Plug 'neomake/neomake'

" syntax error/highlighting
Plug 'vim-syntastic/syntastic'

Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'scrooloose/nerdtree'
Plug 'hdima/python-syntax'

Plug 'bfredl/nvim-miniyank'

" Add plugins to &runtimepath
call plug#end()
set rtp+=/usr/local/opt/fzf
map <silent> <C-n> :NERDTreeToggle<CR>

""" SYNTASTIC PREFS
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_highlighting = 1

let g:syntastic_python_checkers = ['python']

""" LOAD OLD VIMRC CAUSE I'M LAZY
:source ~/.vimrc
"Line numbers
:set number

"Color
:colorscheme desert 

" Syntax highlighting
let python_highlight_all = 1

" Automatically apply pep8
au FileType python setlocal formatprg=autopep8\ -

""" Use miniyank instead of default yank/paste
map p <Plug>(miniyank-startput)
map P <Plug>(miniyank-startPut)

