" Setting line numbers to make it easier to navigate
set number

" syntax highlighting
syntax on

" autodetect the filetype
filetype plugin indent on
" credit to Grant Barton for the last two lines

" if being used for git difftool, show numbers
if &diff
  set number
endif
" git difftool can be setup by setting the global git config with 'git config --global diff.tool vimdiff'
" and can be used by running 'git difftool'

" Displaying the current file path in the view
set laststatus=2
set statusline=%4*\ %<%F%*

" Setting wrapping so a backspace at the beggining of a line takes you to end of last line
set whichwrap=<,>,[,],h,l
" Setting mouse scrolling to work as expected
set mouse=a
" Setting tabs to be 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
" Setting smart indenting to have new lines follow the indents of the line above them
set smartindent
" Setting spelling to be on, because I cannot spell
set spell spelllang=en_us


" Start of vim pluggin stuff

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'junegunn/seoul256.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'dense-analysis/ale'
call plug#end()
" End of vim pluggin stuff

" Colors
colo seoul256
colo seoul256-light
set background=dark


" Start of custom commands
:command! Dbg :normal i print('');<ESC>hhh
