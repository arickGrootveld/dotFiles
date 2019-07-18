" Setting line numbers to make it easier to navigate
set number

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
call plug#begin('~/.vim/plugged')

Plug 'junegunn/seoul256.vim'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
" End of vim pluggin stuff

" Colors
colo seoul256
colo seoul256-light
set background=dark


" Start of custom commands
:command! Dbg :normal i console.log('');<ESC>hhh
