set autoindent
set number relativenumber
set tabstop=4

" I don't like the recommended tab width...
let g:python_recommended_style = 0

"==== netrw settings

" tree style
let g:netrw_liststyle=3

" remove banner
let g:netrw_banner=0

let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

"==== mappings

" splits
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>

" asciidoc python snippet
nmap <Leader>p o[python]<CR>----<CR>----<ESC>O

"==== vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
call plug#end()

