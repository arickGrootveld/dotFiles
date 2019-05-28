set number

set laststatus=2
set statusline=%4*\ %<%F%*

set whichwrap=<,>,[,],h,l
set tabstop=4
set smartindent
set spell spelllang=en_us


" Start of vim pluggin stuff
call plug#begin('~/.vim/plugged')

Plug 'junegunn/seoul256.vim'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
" End of vim pluggin stuff

" Colors
colo seoul256
colo seoul256-light
set background=dark

:command! Dbg :normal i console.log('');<ESC>hhh
